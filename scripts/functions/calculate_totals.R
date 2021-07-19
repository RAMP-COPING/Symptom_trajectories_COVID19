# scoreItems from psych package to calculate total scores, imputing any missing values from the mean of the items. 
# drop anyone who missed more than user specified number of items (scale dependent)
# specify minimum and maximum item values to avoid accidentally incorporating -77s etc.

calculate_totals <- function(dataframe,itemlist,keylist,minval,maxval,maxmissing){

#calculate scores  
  scores <- scoreItems(keys=keylist,items=dataframe[itemlist],
             impute="mean",
	     min=minval,
	     max=maxval,
	     totals = TRUE)

# remove people who have missed more than the pre-requisite items
	scores$scores[scores$missing > maxmissing] <- NA

	#show internal consistency metrics
	message("internal consistency metrics")
	print(scores)
# show patterns of missingness 
	message("\ntotal item missingness rates. Note: any with greater than your maximum missing value are excluded\n")
	print(table(scores$missing))
# show score descriptives

	message(paste0("\ndescriptives of total score in sample after mean imputation. Only those with < ", maxmissing, "missing items are included"))
	message("\ntotal valid samples:")
	print(sum(!is.na(scores$scores)))
	message("\nMean total score:")
	print(round(mean(scores$scores,na.rm = TRUE),2))
	message("\nStandard deviation:")
	print(round(sd(scores$scores,na.rm=TRUE),2))
	message("\nMinimum total score:")
	print(min(scores$scores,na.rm = TRUE))
	message("\nMaximum total score:")
	print(max(scores$scores,na.rm = TRUE))
	

# return column of scores
	return(scores$scores)
}
  

