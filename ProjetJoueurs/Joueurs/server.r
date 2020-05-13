tabjoueur <- read.csv2(file = "joueur.csv",header=TRUE,sep=";", dec=".",row.names=1)


server <- function(input, output, session) {
  output$joueur <- renderText({
    paste("Joueur1 :",input$name, input$surname, input$age, input$nationalite, input$job, input$sexe)
  })
  
  output$listejoueurs <- renderTable({
    tabjoueur <- data.frame("Prénom"= input$name, "Nom" =input$surname, "Date de naissance"=input$age, "Nationalité" = input$nationalite, "Profession" = input$job,"Sexe"=input$sexe)
  })
} 
  