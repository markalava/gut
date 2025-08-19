

##' Get default argument values as vector
##'
##' Returns the default values for function arguments as a  vector.
##'
##' @param fn Name of function; passed to \code{\link{match.arg}}.
##' @param arg Character; name of argument.
##' @return Vector; the type depends on the argument defaults.
##' @author Mark C Wheldon
##' @export
get_arg_defs <- function(fn, arg) {
    fn <- match.fun(fn)
    as.character(formals(fn)[[arg]])[-1]
}
