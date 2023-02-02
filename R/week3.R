# Script settings and resources.
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Data Import and Cleaning
raw_df <- read.csv(file = "../data/week3.csv", header = TRUE)
raw_df$timeStart <- lapply(raw_df$timeStart, as.POSIXct)
raw_df$timeEnd <- lapply(raw_df$timeEnd, as.POSIXct)
clean_df <- as.data.frame(raw_df[raw_df$timeStart >= 1498888800,]) ; clean_df$timeStart <- as.numeric(clean_df$timeStart)
clean_df <- as.data.frame(clean_df[clean_df$q6 == 1,]); clean_df$timeEnd <- as.numeric(clean_df$timeEnd)

# Analysis
timeSpent <- clean_df$timeEnd - clean_df$timeStart # I could not figure this out throuth diffTime, so here is my alternative
hist(timeSpent)
