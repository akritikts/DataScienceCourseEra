pollutantmean <- function(directory, pollutant, id = 1:332){
  ndir <- paste("~/RProjects/DataScienceCourseEra/specdata/", directory, ".csv")
  ndata <- read_csv(ndir)
  
  if(identical(pollutant, "sulfate"))
  {
    nvec <- ndata[2]
    nvec <- nvec[!is.na(nvec)]
  }
  else
  {
    nvec <- ndata[3]
    nvec <- nvec[!is.na(nvec)]
  }
  round(mean(nvec), 3)
}