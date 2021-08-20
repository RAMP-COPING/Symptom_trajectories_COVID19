# Function to create forest plots  using formatted data


relrisk.forest <- function(data,plot_title,sub_title,pointsize=2,linesize=1,errorsize=1,
                      axistext=10,axistitle=12,legtitle=12,stripsize=12,title_size=12,
                      colourpal=forest.palette,lowlim=0.01,uplim=6,dodge=0.5)
  
  {
  p = ggplot(data=data,
             aes(x =predictor,y = RelativeRisk,
                 colour = category)) +
    
    geom_point(size = pointsize,
               position = position_dodge(dodge)) +
    
    geom_hline(yintercept =1,
               linetype=1,
               size = linesize)  +
    
    xlab('Class') +
    ylab("\nEstimate (95% Confidence Interval)")  +
    
    geom_errorbar(aes(ymin = lower,
                      ymax = upper),
                  width = 1,
                  position = position_dodge(dodge),
                  size = errorsize)  +
    
    #facet_wrap(. ~ Categories,
    #           strip.position="left",nrow=6, scales="free_y") +
    
    facet_grid(. ~ class,  drop = TRUE) +
    
    scale_colour_manual(values=colourpal) +
    scale_y_log10(limits = c(lowlim,uplim)) + # Log-scale
    theme(plot.title=element_text(face="bold",size=axistext,), #element_text(size=0,face="bold"),
          axis.text=element_text(face="bold",size=axistext,),
          legend.text=element_text(size=title_size),
          legend.title=element_text(face="bold",size=legtitle,),
          legend.position = "none",
          axis.title.x=element_blank(), #element_text(size=axistitle,face="bold"),
          axis.title.y=element_blank(),
          strip.text.y = element_text(angle=180,face="bold",size=stripsize),
          panel.background = element_blank(),
          strip.background = element_rect(fill = "light grey"),
          panel.border = element_rect(colour = "grey",fill = NA)) +
    # guides(color = guide_legend(reverse = TRUE)) +

    ggtitle(plot_title,
            subtitle = sub_title) +

    coord_flip()
  return(p)
  
}





