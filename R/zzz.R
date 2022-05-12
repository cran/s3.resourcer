# register S3 file getter
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0("Registering S3FileResourceGetter..."))
  resourcer::registerFileResourceGetter(S3FileResourceGetter$new())
  packageStartupMessage(paste0("Registering S3SparkResourceConnector..."))
  resourcer::registerDBIResourceConnector(S3SparkResourceConnector$new())
}

# unregister S3 file getter
.onDetach <- function(libpath) {
  resourcer::unregisterFileResourceGetter("S3FileResourceGetter")
}
