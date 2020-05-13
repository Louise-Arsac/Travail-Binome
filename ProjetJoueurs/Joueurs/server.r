


server <- function(input, output, session) {
  output$joueur <- renderText({
    paste("Joueur :",input$name, input$surname, input$age, input$nationalite, input$job, input$sexe)
  })
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prénom"= c(input$name1,input$name2), "Nom" =c(input$surname1,input$surname2), "Date de naissance"=c(input$age1,input$age2), "Nationalité" = c(input$nationalite1,input$nationalite2), "Profession" = c(input$job1,input$job2),"Sexe"=c(input$sexe1,input$sexe2))
  })
  
  output$info <-renderText({
    conteneur <- "Réponses :"
    conteneur <- c(conteneur,input$name)
  
})
} 

