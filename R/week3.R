# Script settings and resources.
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Data Import and Cleaning
raw_df <- read.csv(file = "../data/week3.csv", header = TRUE)
raw_df$timeStart <- lapply(raw_df$timeStart, as.POSIXct)
raw_df$timeEnd <- lapply(raw_df$timeEnd, as.POSIXct)
