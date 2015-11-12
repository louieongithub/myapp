shinyUI( fluidPage(
    titlePanel("How Much Will My Orange Tree Grow?"),
    sidebarPanel(
        sliderInput("ageinyears", 
                    "select years of tree growth",
                    value = 1, 
                    min = 0.1, 
                    max = 3.5,
                    step=0.1)
    ),
    mainPanel(
        tabsetPanel(type = "tabs", 
                    tabPanel("Results", 
                             h3("Circumference of your orange tree"),
                             h3("You have entered"),
                             verbatimTextOutput("ageinyears"),
                             p("Years"),
                             h3("Expected circumference in mm"),
                             verbatimTextOutput("predgrowth")
                             ), 
                    tabPanel("About", 
                             h3("About"),
                             p("This app was designed to help predict the future circumference size in mm of orange tree trunks. This app uses data from the orange r dataset and a linear model of this dataset to make predictions of Orange tree growth over time. This application was developed for assessment purposes for the Coursera Data Science Specialization by Louie Sakellaris. Although the data used by this application is expected to be accurate this application may have limited ability in providing predictions to be used for an agricultrual setting. If you intend to use this application for such settings you do so at your own risk.You can find help on using this app by clicking the help tab located above. ")), 
                    tabPanel("Help",
                             h3("How to use this application"),
                             p("This application is useful to predict the circumference size in mm of orange tree trunks."),
                             h3("Step 1"),
                             p("Adjust the slider knob to left or right to select the age in years for which you would like to predict. Adjusting the the knob is done by hovering the curser over the knob and and holding while draging either left or right. "),
                             h3("Step 2"),
                             p("Click on the results tab to view the results panel"),
                             h3("More information"),
                             p("Clicking on the Results tab will show results"),
                             p("Clicking on the About tab will show information about this application."),
                             p("Clicking on the Help tab will show how to use this application")
                             
                             )
       
    ))
))