


server <- function(input, output, session) {
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Age"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
  })

    
  datajoueur <- reactive({
    req(input$file)
    
    ext <- tools::file_ext(input$file$name)
    tabjoueur<-data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Age"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
    reslign<-rbind(ext,tabjoueur)
    
    switch(reslign,
           csv = vroom::vroom(input$file$datapath, delim = ","),
           tsv = vroom::vroom(input$file$datapath, delim = "\t"),
           validate("Invalid file; Please upload a .csv or .tsv file")
    )
  })
  
  #output$head <- renderTable({
  #tabjoueur<-data.frame("Prenom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Age"=c(input$age1,input$age2), "Nationalite" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
  
  #reslign<-rbind(datajoueur(),tabjoueur)
  #head(reslign) 
  #})
  
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("joueur", ".csv", sep = "")
    },
    content= function(file){
      write.csv(reslignInput(), file, row.names = FALSE)
    }
  )
} 

