server <- function(input, output, session) {

  output$static<- renderTable(iris)
  # output$static <- renderTable(head (iris)) # soit l'un soit l'autre mais le premier est plus complet
}
