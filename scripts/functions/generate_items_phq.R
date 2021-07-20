generate_items_phq <- function(WaveNum) {
  
  item_list <- c(paste0("phq9.pandemic_little_interest_or_pleasure_.Wave_",WaveNum),
                paste0("phq9.pandemic_down_depressed_hopeless_.Wave_",WaveNum),
                paste0("phq9.pandemic_trouble_falling_or_staying_asleep_.Wave_",WaveNum),
                paste0("phq9.pandemic_feel_tired_little_energy_.Wave_",WaveNum),
                paste0("phq9.pandemic_poor_appetite_or_overeating_.Wave_",WaveNum),
                paste0("phq9.pandemic_feeling_like_a_failure_.Wave_",WaveNum),
                paste0("phq9.pandemic_trouble_concentrating_.Wave_",WaveNum),
                paste0("phq9.pandemic_fidgeting_or_moving_slowly_.Wave_",WaveNum),
                paste0("phq9.pandemic_thoughts_better_off_dead_.Wave_",WaveNum)
                )
                
                return(item_list)
}
