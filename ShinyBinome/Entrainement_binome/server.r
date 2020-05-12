server <- function(input, output, session) {
  output$static <- renderTable({
    library(datasets)
    data("iris")
    head(iris)
  })
  
  output$dynamic<- renderDataTable (iris, options = list (pageLengh= 5))
  
  output$longpetale <- renderPlot(
    width = function() input$width,
    height = function() input$height,
    { data("iris")
      u1 <- iris[,3]
      u2 <- iris[,5]
      plot(u1~u2, xlab="Espèces", ylab = "Longueur des pétales", main = "Différence de taille des pétales selon l'espèce")
  })
  
  output$iris_Plot<- renderPlot({
    data ("iris")
    plot (iris$Sepal.Length, iris$Species, main= "Longueur des sepales en fonction de l'espece", xlab= "Longueur sepales", ylab= "Especes")
    
  })
  
  }