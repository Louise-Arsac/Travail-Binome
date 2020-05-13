library(datasets)
library(shiny)

ui <- fluidPage(
  textInput ("name", "Indiquez votre prenom"),
  textInput("surname","Votre nom de famille :"),
  selectInput("age", "Quel est votre âge ", c(15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)),
  selectInput("nationalite", "Quelle est votre nationalite ? ", c("Allemande","Anglaise","Américaine","Belge","Française","Italienne","Japonaise","Russe","Suisse")),
  textAreaInput("job", "Quelle est votre profession?", rows = 4),
  radioButtons("sexe", "Indiquez ci-dessous votre sexe", c("Femme", "Homme")),
  
  textOutput("joueur"),
  tableOutput ("listejoueurs")
  
)