setwd("C:\\Users\\Brandon\\Desktop\\Coursera\\specdata")

pollutantmean <- function(directory, pollutant, id = 1:332) {
     ## 'directory' is a character vector of length 1 indicating the location of
     ## the CSV files
 
     ## 'pollutant' is a character vector of length 1 indicating the name of the
     ## pollutant for which we will calculate the mean; either 'sulfate' or
     ## 'nitrate'.
 
     ## 'id' is an integer vector indicating the monitor ID numbers to be used
 
     ## Return the mean of the pollutant across all monitors list in the 'id'
     ## vector (ignoring NA values)
     data = numeric()
     for (i in id) {
 
         newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
             ".csv", sep = ""))
 
         data = c(data, newRead[[pollutant]])
    }
     return(mean(data, na.rm = TRUE))
 }
 pollutantmean("C:\\Users\\Brandon\\Desktop\\Coursera\\specdata", "nitrate", 23)
[1] 1.280833
 pollutantmean("C:\\Users\\Brandon\\Desktop\\Coursera\\specdata", "nitrate", 70:72)
[1] 1.706047
 pollutantmean("C:\\Users\\Brandon\\Desktop\\Coursera\\specdata", "sulfate", 1:10)
[1] 4.064128
