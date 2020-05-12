server <- function(input, output, session) {
  output$static <- renderTable({
    library(datasets)
    data("iris")
    head(iris)
  })
  
  output$longpetale <- renderPlot({
    data("iris")
    u1 <- iris[,3]
    u2 <- iris[,5]
    plot(u1~u2, xlab="Espèces", ylab = "Longueur des pétales", main = "Différence de taille des pétales selon l'espèce")
  })
}