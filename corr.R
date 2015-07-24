corr <- function(directory, threshold = 0) {
  dat<-c()
  #directory <- "specdata"
  comp <- complete(directory)
  all_files<-list.files(path=directory,all.files=FALSE,full.names = T, no..=T)
  for(i in 1:length(all_files)){
    #cat(paste("\n complete observations: ",comp$nobs[i]))
    if(comp$nobs[i] > threshold){
      data <- read.csv(all_files[i])
      correlation = cor(data$nitrate, data$sulfate, use="na.or.complete")
      #cat(paste("\n     -> Correlation: ",correlation))
      dat <- c(dat, correlation)
    }
  }
    dat
}
