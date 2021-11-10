
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

#v1 <- c(1,2,3,4,4,5,3,3,1,3)
#v2 <- c(1,1,1,1,1,1,1,1,1,1)
#v3 <- c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)
#v4 <- c(1,2,3,4,NA,5,NA,3,1,8)

#rawdat = data.frame(v1,v2,v3,v4)
#rawdat

#df.updated = remove.nulls(rawdat)
#df.updated

#df.updated = carbon.copy(df.updated)
#df.updated
