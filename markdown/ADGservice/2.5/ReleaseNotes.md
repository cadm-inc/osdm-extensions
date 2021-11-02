# _ADGservice_ Modeling Extension Release Notes {.title}

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
