complete <- function(directory, id = 1:332) {
  dat<-data.frame()
  #directory <- "specdata"
  all_files<-list.files(path=directory,all.files=FALSE,full.names = T, no..=T)
  for(i in id){
    data <- read.csv(all_files[i])
    ok <- complete.cases(data)
    #sum(ok) # how many are "ok" ?
    newdata <- data.frame(id = i, nobs = sum(ok))
    dat <- rbind(dat, newdata)
  }
  dat
}
