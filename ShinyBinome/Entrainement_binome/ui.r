installe.packages("iris")
library(shiny)
library (iris)


ui <- fluidPage(
 
      # Informations générales : 
  
  textInput ("name", "Indiquez votre prénom"),
  textInput("surname", "Indiquez votre nom de famille"),
  dateInput("naissance", "Date de naissance: "),
  textAreaInput("job", "Quelle est votre profession?", rows = 4),
  selectInput("nationalite", "Quelle est votre nationalité? "), 
  sliderInput("toit", "Indiquez le nombre de personne vivant sous votre foyer"), 
  radioButtons("sexe", "Indiquez ci-dessous votre sexe"),
  radioButtons("iris", "Aimez-vous les iris"),
  
  # entrée pour les graph
  plotOutput("iris_graph", width = "400 px")
  
  
)
#Nom/Prénom avec TextInput
#Âge avec TextInput
#Sexe avec RadioButtons
#Nationalité avec selectInput
#Profession avec textAreaInput()
#Combien de personnes sous le même toit? avec sliderInput
#Aimez-vous les iris? avec RadioButtons (yes/no/maybe)

#Afficher tableau iris (-	dataTableOutput ()et renderDataTable()rendre un tableau dynamique, 
  #montrant un nombre fixe de lignes ainsi que des commandes pour changer les lignes qui sont visibles.
#plot des espèces en fonction longueur pétale avec PlotOutput
#barplot des espèces en fonction longueur sépale

#Faire un hisogramme interactif : les valeurs sont entrées par la personnes ?
  #https://mastering-shiny.org/basic-reactivity.html?