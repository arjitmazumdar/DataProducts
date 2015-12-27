# ui.R

shinyUI(fluidPage(
        
        titlePanel(" BMI- Body Mass Index Calculation For Men and Women"),
        
        sidebarLayout(
                sidebarPanel(
                        
                p(h4("Please Enter Your Details")),
                
                textInput("text", label = ("Name"), 
                          value = "Enter Name..."),
                
                radioButtons("radio", label = ("Sex"),
                             choices = list("Male" = 1, "Female" = 2
                             ),selected = 1),
                
                sliderInput("slider1", label = ("Height (in meters)"),
                            min = 0, max = 300, value = 0),
                sliderInput("slider2", label = ("Weight (in kgs)"),
                            min = 0, max = 200, value = 0),
                
                submitButton("Submit")
                
                ),

        mainPanel(
                        h4(em("Stay Healthy Stay Happy")),

p(strong("To keep the body in", em("good health"),"is a duty
                                    ... otherwise we shall not be able to 
                                    keep our mind", em("strong and clear.- Buddha"))),
br(),

img(src="bmi.png", height = 200, width = 500),
br(),
br(),
br(),

textOutput("bmi"),
br(),

p("For maintaining a good BMI, visit the ",
  a("National Heart, Lung and Blood Institute homepage.", 
    href = "http://www.nhlbi.nih.gov/health/educational/lose_wt/index.htm")),

p(h6(" Copyright: National Institute of Health "))



))))