
function update_manifest() {
     var manifest = {
        "version":   "latest",
        "buildDate": "today",
        "copyright": "Copyright 2014-2020 CADM, Inc"
     }

    for (var key in manifest) {
        var tag = document.getElementsByClassName(key);
        for (var i in tag) {
             tag[i].outerText = manifest[key];
        }
    }
}

if (window.addEventListener) { // W3C standard
    window.addEventListener('load', update_manifest, false); // NB **not** 'onload'
}
else if (window.attachEvent) { // Microsoft
    window.attachEvent('onload', update_manifest);
}

