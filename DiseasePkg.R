#install.packages("pracma")
library(pracma)

## ADD IN FIRST FUNCTION 
string_NA <- function(data){
  data[data == "'--"] <- NA
  return(data)
}

# Remove a column if two columns are the exact same
carbon.copy <- function(df){
  return(df[!duplicated(as.list(df))])
}

# Print out all columns that have the same value for all rows 
find_nonuniq <- function(dataset){
  cols_nonunique <- c()
  for(i in 1:ncol(dataset)){
    if(length(unique(dataset[,i])) <= 1){
      cols_nonunique[length(cols_nonunique) + 1] <- i #append the vector with the new columns
    }
  }
  print(cols_nonunique) #print the vector
}