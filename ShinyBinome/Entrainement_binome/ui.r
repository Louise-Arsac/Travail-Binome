library(datasets)
library(shiny)

ui <- fluidPage(
  textInput ("name", "Indiquez votre prenom"),
  textInput("surname","Votre nom de famille :"),
  dateInput("naissance", "Date de naissance: "),
  selectInput("nationalite", "Quelle est votre nationalite ? ", state.name),
  textAreaInput("job", "Quelle est votre profession?", rows = 4),
  radioButtons("sexe", "Indiquez ci-dessous votre sexe", c("Femme", "Homme")),
  sliderInput("toit", "Indiquez le nombre de personne vivant avec vous sous votre foyer", 
              min = 0, max = 15, value = 0),
  radioButtons("iris", "Aimez-vous les iris", c("yes","no","maybe")),
  tableOutput("static"),
  plotOutput("longpetale"),
  sliderInput("height", "Hauteur graphique", min = 200, max = 500, value = 400),
  sliderInput("width", "Largeur graphique", min = 200, max = 600, value = 500),
  plotOutput("iris_Plot"),
<<<<<<< HEAD
  tableOutput("static"),
  dataTableOutput("dynamic")
 
=======
  
>>>>>>> eae9784f0b37c92f67ed72778a2b91d812883fab
)

  
  
  
      # Informations generales : 
  
  #textInput ("name", "Indiquez votre prénom"),
  #textInput("surname", "Indiquez votre nom de famille"),
  #dateInput("naissance", "Date de naissance: "),
  #textAreaInput("job", "Quelle est votre profession?", rows = 4),
  #selectInput("nationalite", "Quelle est votre nationalité? "), 
  #sliderInput("toit", "Indiquez le nombre de personne vivant sous votre foyer"), 
  #radioButtons("sexe", "Indiquez ci-dessous votre sexe"),
  #radioButtons("iris", "Aimez-vous les iris"),
  
  # entree pour les graph :
  #plotOutput("iris_graph", width = "400 px")
  
#Nom/Prenom avec TextInput
#Age avec TextInput
#Sexe avec RadioButtons
#Nationalite avec selectInput
#Profession avec textAreaInput()
#Combien de personnes sous le meme toit? avec sliderInput
#Aimez-vous les iris? avec RadioButtons (yes/no/maybe)

#Afficher tableau iris (-	dataTableOutput ()et renderDataTable()rendre un tableau dynamique, 
  #montrant un nombre fixe de lignes ainsi que des commandes pour changer les lignes qui sont visibles.
#plot des espèces en fonction longueur petale avec PlotOutput
#barplot des espèces en fonction longueur sepale

#Faire un hisogramme interactif : les valeurs sont entrées par la personnes ?
  #https://mastering-shiny.org/basic-reactivity.html?