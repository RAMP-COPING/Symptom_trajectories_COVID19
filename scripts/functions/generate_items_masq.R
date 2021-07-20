generate_items_masq <- function(WaveNum) {
  
  item_list <- c(paste0("masq.pandemic_felt_successful_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_really_happy_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_optimistic_.Wave_",WaveNum),
                paste0("masq.pandemic_lot_felt_fun_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_like_i_accomplished_a_lot_.Wave_",WaveNum),
                paste0("masq.pandemic_forward_lot_felt_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_really_talkative_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_really_up_or_lively_.Wave_",WaveNum),
                paste0("masq.pandemic_lot_felt_energy_.Wave_",WaveNum),
                paste0("masq.pandemic_felt_really_good_about_myself_.Wave_",WaveNum)
                )
                
                return(item_list)
}
