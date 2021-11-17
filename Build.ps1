<#
.SYNOPSIS
Build a static HTML site from Markdown files.
#>
[string]$SCRIPT:projectDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Import-Module -Name MarkDownToHTML

$OutputEncoding = [System.Text.Encoding]::UTF8 # Send utf8 to external programs

# Load JSON configuration
$SCRIPT:config = Get-Content (Join-Path $projectDir 'Build.json') | ConvertFrom-Json
if (!$config) {
    throw 'No build configuration found!'
}

# Determine the location of the static HTML site to build.
$SCRIPT:staticSite = Join-Path $projectDir $config.site_dir

# Clean up the static HTML site before build.
Remove-Item $staticSite -Recurse -Force -ErrorAction:SilentlyContinue

$modulenav=@{}

# Set-up the content mapping rules for replacing template placeholders
# of the form {{name}}.
$SCRIPT:contentMap = @{
	# Add additional mappings here...
	'{{footer}}' = {
	    param($fragment) # the html fragment created from a markdown file
	    $pathelements = $fragment.RelativePath -split '/'
	    if ($pathelements.Length -gt 2) {
	        $name = $pathelements[0]
	        $version=$pathelements[1]
	        $depth = '../' * ($pathelements.Length - 3)
	        $footer = $config.extension_footer.Replace('{{relpath}}',"${depth}")
	        $footer = $footer.Replace('{{extensionname}}',$name)
	        $footer.Replace('{{version}}',$version)
	    } else {
	        $config.generic_footer
	    }
	}
	'{{nav}}'    = {
		param($fragment) # the html fragment created from a markdown file
		$navcfg = $config.navigation_bar # navigation bar configuration
		# Create the navigation items configured in 'Build.json'
		New-SiteNavigation -NavitemSpecs $config.site_navigation `
		                   -RelativePath $fragment.RelativePath `
		                   -NavTemplate $navcfg.templates

		# add module specific navigation if available
		$pathelements = $fragment.RelativePath -split '/'
		$module_navigation = $null
	    if ($pathelements.Length -gt 2) {
	        $modulepath="$($pathelements[0])/$($pathelements[1])"
	        $module_navigation = $modulenav[$modulepath]
	        if (!$module_navigation) {
	            # attempt to load the module configuration
	            $module_json =  Join-Path $projectDir "$($config.markdown_dir)/${modulepath}/Build.json"
	            if (Test-Path -Path $module_json ) {
	                $modulecfg = Get-Content "$module_json" | ConvertFrom-Json
	                $module_navigation = $modulecfg.site_navigation

	                # fix the module navlinks by prefixing them with the version
	                # specific relative module directory path
	                foreach ($entry in $module_navigation) {
	                    $prop = Get-Member -InputObject $entry -MemberType NoteProperty | Select-Object -first 1
	                    $name = $prop.Name
	                    $val=$entry."$name"
	                    if ($val.Length -gt 3 -and !$val.StartsWith('http')) {
	                        $entry."$name" = "$modulepath/$val"
	                    }
	                }
	                # update the cache
	                $modulenav[$modulepath] = $module_navigation
	            }
	        }
		}

		if ($module_navigation)  {
		   # add module specific navigation
	       New-SiteNavigation -NavitemSpecs $module_navigation `
		                      -RelativePath $fragment.RelativePath `
		                      -NavTemplate $navcfg.templates
        } else {
            # page content label not provided by module navigation
            # so we need to provide it
            New-SiteNavigation -NavitemSpecs @(@{"Page Content" = "" })`
        	                   -RelativePath $fragment.RelativePath `
        	                   -NavTemplate $navcfg.templates
        }
		# Create navigation items to headings on the local page.
		# This requires the `autoidentifiers` extension to be enabled.
		New-PageHeadingNavigation -HTMLfragment $fragment.HTMLFragment `
		                          -NavTemplate $navcfg.templates `
		                          -HeadingLevels $navcfg.capture_page_headings
	}
}

# Conversion pipeline
$SCRIPT:markdown = Join-Path $projectDir $config.markdown_dir
    
write-host "!!!!!!! $($config.Exclude.GetType())"
Find-MarkdownFiles $markdown -Exclude $config.Exclude `
| Convert-MarkdownToHTMLFragment -IncludeExtension $config.markdown_extensions -Split `
| Convert-SvgbobToSvg -SiteDirectory $staticSite -Options $SCRIPT:config.svgbob `
| Publish-StaticHTMLSite -Template (Join-Path $projectDir $config.HTML_Template) `
                         -ContentMap  $contentMap `
						 -MediaDirectory $markdown `
	                     -SiteDirectory $staticSite

if ($config.github_pages) {
	# Switch off Jekyll publishing when building for GitHub pages
	New-Item -Path $staticSite -Name .nojekyll -ItemType File
}


