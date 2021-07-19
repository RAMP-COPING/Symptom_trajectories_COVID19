calculate_totals <- function(dataframe,itemlist,keylist){
  
  scoreItems(keys=keylist,items=dataframe[itemlist],
             impute="none")
}
  
