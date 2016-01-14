#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
  
  output$abril<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_abr[y,y], digits=4))
    
  })
  
  output$abril2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_abr[y,y], digits=4))
    
  })
  
  output$confidenceabril<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_abr[x,y]/a_matrix_abr[x,x], digits=4))
  })
  
  output$liftabril<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_abr[x,y], digits=4)/(round(a_matrix_abr[x,x], digits=4)*round(a_matrix_abr[y,y], digits=4)),digits=4))
  })
  
  output$tablanamecat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1],digits=4))
  })
  
  output$tablanamecat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[2],digits=4))
  })
  
  output$tablanamecat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tablanamecat5abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  output$tabla1namecat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))   
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[3], digits=4))
  })
  
  output$tabla1namecat4abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    
    paste( round(t[4], digits=4))
  })
  
  output$tabla1namecat5abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[5], digits=4))
  })
  
  
})


#Abril
catg_Abr<-data.frame(Abril$CATEGORIA1, Abril$Categoriaf3,
                     Abril$SLSEQ, Abril$TICKET)

catg_sin_rep_Abr<-unique(catg_Abr)

