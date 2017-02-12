library(shiny)


shinyUI(fluidPage(
  
  # Application title
  titlePanel("MT Cars: Simple Linear Regression Diagnostics"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel("This is an app that runs model diagnostics for simple linear regression models created for the mtcars dataset in R. Follow the steps below:",
       selectInput("var1", "Step 1: Select target variable:", names(mtcars), "mpg"),
       selectInput("var2", "Step 2: Select input variable:", names(mtcars), "disp")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot1"),
       h3("Plot Interpretations"),
       h4("1. Residuals vs Fitted"),
       h5("There must be no distinct relationship between residuals and fitted values. If there is, your model is missing a non-linear variable that would better explain the target variable if it existed."),
       h4("2. Normal Q-Q"),
       h5("Residuals for a good model must follow a normal distribution. The more the points are lined up to the dotted line, the closer the distribution is to being perfectly normal."),
       h4("3. Scale-Location"),
       h5("This plot tests homoscedasticity (i.e. equal variance). It shows how residuals are spread along ranges of predictors. If the points are randomly ploted around a horizontal line, the model is good."),
       h4("4. Residuals vs Leverage"),
       h5("This plot shows any influential observations (i.e. outliers that don't really follow the trends of the other points and therefore impact the regression line more. Points outside the dotted line indicate observations influential to the regression result.")
    )
  )
))
