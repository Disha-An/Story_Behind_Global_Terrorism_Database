library(shiny)
library(ggplot2)  # for the diamonds dataset

fluidPage(
    tags$h4(style = "font-family:Calibri","Each node shows:"),
    tags$p("-the predicted class"),
    tags$p("-the predicted probability of each class"),
    tags$p("-the percentage of observations in the node"),
    tags$hr(),
    mainPanel(
            tabsetPanel(
                tabPanel('region ~ attack type + target type + weapon type', img(src='region~attack+target+weapon.png',height=700,width=1200)),
                tabPanel('region ~ attack type + target type', img(src='region~attack+target.png',height=700,width=1200)),
                tabPanel('region ~ target type + weapon', img(src='region~target+weapon.png',height=900,width=1000))
        )
        )
    )