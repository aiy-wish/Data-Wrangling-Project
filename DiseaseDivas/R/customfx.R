#FIND NON-UNIQUE values in the dataset
find_nonuniq <- function(dataset){ 
  cols_nonunique <- c() 
  for(i in 1:ncol(dataset)){ 
    if(length(unique(dataset[,i])) <= 1){ 
      cols_nonunique[length(cols_nonunique) + 1] <- i  
    }
  }
  print(cols_nonunique) 
} 

#String_NA finds the filler string value and changes it to NA
string_NA <- function(data){
  data[data == "'--"] <- NA
  return(data)
}

# Carbon copy finds the duplicate columns and removes them 
carbon.copy <- function(df){
  return(df[!duplicated(as.list(df))])
}
