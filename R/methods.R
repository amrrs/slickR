#' @export
'*.slickR' <- function(e1,e2){
  
  e1$x[[1]]$slickOpts[['asNavFor']] <- paste0(sprintf(".%s",sapply(e2$x,function(x) x$divName)),collapse = ',')
  e2$x[[1]]$slickOpts[['asNavFor']] <- paste0(sprintf(".%s",sapply(e1$x,function(x) x$divName)),collapse = ',')
  
  e1$x <- append(e1$x,e2$x)
  
  return(e1)
  
}

#' @export
'+.slickR' <- function(e1,e2){
  
  e1$x <- append(e1$x,e2$x)
  
  return(e1)
  
}
