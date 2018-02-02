pollutantmean <- function(directory, pollutant, id = 1:332){
  ## Get a list of filenames
  filenames <- list.files(path=directory, pattern="*.csv")
  
  ## Loop over the passed id's
  for(i in id) {
    
    ## Pad the i to create a filename
    filename <- sprintf("%03d.csv", i)
    filepath <- paste(directory, filename, sep="/")
    
    ndata <- read.csv(filepath)
    nvec <- vector()
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
  }
  round(mean(nvec), 3)
}