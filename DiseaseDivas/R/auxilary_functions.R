
remove.nulls <- function(df){
  for(i in 1:ncol(df)){
    for(j in 1:nrow(df[i])){
      if(is.na(df[i])){
        new.df = df[-c(i)]
      }
    }
  }
  return(new.df)
}

# Fix this by comparing two columns
carbon.copy <- function(df){
  for(i in 1:ncol(df)){
    for(j in 1:nrow(df[i])){
      if(!(nrow(unique(df[i])) > 1)){
        new.df = df[-c(i)]
      }
    }
  }
  return(new.df)
}

find_nonuniq <- function(dataset){
  cols_nonunique <- c()
  for(i in 1:ncol(dataset)){
    if(length(unique(dataset[,i])) <= 1){
      cols_nonunique[length(cols_nonunique) + 1] <- i #append the vector with the new columns
    }
  }
  print(cols_nonunique) #print the vector
}
