##############################################
# Install packages masterfile
##############################################

# Tips #

# Type ??packagename for package documentation 
# Type .libPaths() to view current vector of library destinations  
# Type chooseCRANmirror() to interactively select your CRAM mirror
# List install packages using the code below:
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)



# Define location to install packages
folder <- "C:/Users/z3509778/AppData/Local/R"

# Add that library destination to the .libPaths vector
.libPaths(folder)


# Install packages 
install.packages("caret", lib=folder, dependencies=TRUE) # For Machine Learning algotihms
install.packages("rpart", lib=folder, dependencies=TRUE) # Classification trees
install.packages("mlbench", lib=folder, dependencies=TRUE) # Contains the Friedman simulated dataset
install.packages("randomForest", lib=folder, dependencies=TRUE) # Random forests
install.packages("tidyverse", lib=folder, dependencies=TRUE) # A set of packages for data wrangling, includes ggplot2 and dplyr
install.packages("partykit", lib=folder, dependencies=TRUE) # Contains functions to view regression trees
install.packages("markdown", lib=folder, dependencies=TRUE) # Makes dynamic documents within R
install.packages("learnr", lib=folder, dependencies=TRUE) # Turns R markdown documents into interactice tutorials
install.packages("shiny", lib=folder, dependencies=TRUE) # Making interactive web applications
install.packages("magrittr", lib=folder, dependencies=TRUE) # Includes the pipe operator to improve readability of code