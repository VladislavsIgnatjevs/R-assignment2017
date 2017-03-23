# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
#source("dataset.RData");
source("../functions.R");

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Temperature in New York by month, May-September 1973"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(

      radioButtons("detail", label = h3("Report type"),
                   choices = list("Overview" = 1, "Average" = 2, "Detailed"=3, "Relationship" = 4),selected = 1),
      conditionalPanel(condition = "input.detail == '4' || input.detail == '3'", 
                       selectInput("month", "Month:", 
                                   choices=c('May', 'June', 'July', 'August', 'September'))),
      hr(),
      conditionalPanel(condition = "input.detail == '1' || input.detail == '2'", 
                       radioButtons("temp_scope", label = h3("Temperature Format"),
                                    choices = list("Fahrenheit" = 1, "Celsius" = 2, "kelvin"=3),selected = 1)),
      

    
      conditionalPanel(condition = "input.detail == '2'",
                       radioButtons("plot_type", label = h3("Plot type"),
                                    choices = list("Scatter" = 1, "Bar" = 2),selected = 2)),
      conditionalPanel(condition = "input.detail == '3'",
                       radioButtons("detail_type", label = h3("Select measure"),
                                    choices = list("Ozone lelels" = 1, "Temperature" = 4, "Wind speed" = 3, "Solar radiation" = 2),selected = 4)),
      conditionalPanel(condition = "input.detail == '4'",
                       selectInput("measure1", "Measure 1:", 
                                   choices=list('Ozone levels' = 1, 'Temperature' = 4, 'Wind speed' =3, 'Solar radiation' = 2)),
                       selectInput("measure2", "Measure 2:", 
                                   choices=list('Ozone levels' = 1, 'Temperature' = 4, 'Wind speed' =3, 'Solar radiation' = 2))),
      

      
      hr(),
      helpText("Data based on airquality dataset.")
    ),

    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("air_plot")  
    )
    
  )
)