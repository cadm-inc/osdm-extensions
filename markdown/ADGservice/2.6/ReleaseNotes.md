# _ADGservice_ Modeling Extension Release Notes {.title}

# 2.6.0 - Feature Release

* SVG export option added for 2d files. Current implementation only supports the
  basic 8 colors.
* added ability to include containers in step-direct-options.
* fixed problem with creo nuetral file creations (error with zip files).

# 2.5.4 - Maintenance Release

* allow 2d and 3d outputs to be specified in a batch job even if there is no
  corresponding data without producing an error

# 2.5.3 - Bugfix Release

* show face area stats on body compare diffs
* only mail validation reports when there are diffs

# 2.5.2 - Bugfix Release

* for step granite, always convert filenames to legal characters and then rename them back to original name

# 2.5.1 - Bugfix Release

* Special case validation for option groups with constraints
* if validation fails, continue processing rest of possible objects to validate
* keep a copy of the invoice on the server with job data
* use funcall-protected around calls to save
* fix read-only issue with saving sdfiles, fix step export
* introduced new concept of :virutal groups
* improved information in results report, orgainzed reports by subfolders
* modified validate export options to appear below validate export button
* added more details on validation help pages
* fixed link problems
* cleaned up some references to PTC
* changed sender to submitter
* don't report on affected_geometry in validation results
* correct output name of folder for reports

# 2.5.0 - Feature Release

* use append instead of nconc for tracking 2d files generated
* handle am_load_any_mi file failures due to see log message error
* Auto submit option hidden until submit button is pressed with validation errors
  present
* Job context cleanup only if job is not going to be restarted
* lock the input file not the input folder
* Auto-submit job when uploads are finished option implemented
* Logging enhancements

# 2.4.12 - Maintenance Release

* modify input file batch suffix to .txt
* change all log file attachments sent to customers to have .txt suffix

# 2.4.11 - Bugfix Release

* Email spam folder check hint added to job status.
* Wording of email check warning improved as per Marc's request.
* Protected against invoice tokens with control characters.
* set email_errors to email_from if not set
