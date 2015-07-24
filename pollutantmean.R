
pollutantmean <- function(directory, pollutant, id = 1:332) {
    dat<-data.frame()
    all_files<-list.files(path=directory,all.files=FALSE,full.names = T, no..=T)
    for(i in id){
      data <-read.csv(all_files[i])
      dat <- rbind(dat, data)
    }
    dat_subset <- dat[which(dat[, "ID"] %in% id),]
    mean(dat_subset[[pollutant]], na.rm = TRUE)
}

