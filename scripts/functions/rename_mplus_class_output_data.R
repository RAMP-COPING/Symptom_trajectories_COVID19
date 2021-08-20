rename_class_data<- function(dataset){
  
  new_names <- names(dataset)
  new_names[dim(dataset)[2]] <- "hash_id"
  new_names[dim(dataset)[2]-1] <- "MostLikelyClass"
  
  return(new_names)
  
}