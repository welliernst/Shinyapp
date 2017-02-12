library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Calculate CHADSVASC Score"),
    sidebarLayout(
        sidebarPanel(
            # Sidebar with a slider input for Age
            sliderInput("AGE", "What is the age of the patient?", 10, 100, value = 60),
            checkboxInput("C", "Congestive heart failure", value = FALSE),
            checkboxInput("H", "Hypertension", value = FALSE),
            checkboxInput("D", "Diabetes", value = FALSE),
            checkboxInput("S", "Stroke/TIA", value = FALSE),
            checkboxInput("F", "Female Gender", value = FALSE),
            submitButton("Submit")
        ),
        #TextOutput<-"0",
        mainPanel(
            h3("Score for risk of stroke in atrial fibrillation (Afib)"),
            h3("A score >=2 in Afib supports preventive anticoagulation"),
            h3(""),
            h4("Usage: "),
            h4("Tick appropriate boxes and mark age by slider! "),
            h4("Press 'Submit' button after completing input! "),
            h3(""),
            h2("AGE"),
            h2(textOutput("text")),
            h2("CHADSVASC score"),
            h2(textOutput("text2")),
            h3(""),
            h5("Comments:"),
            h5("Previous stroke or transient ischemic attack counts 2 points, otherwise 1 point is added per disease"),
            h5("Vascular disease e.g. comprises peripheral obstructive disease, aortic calcicification or previous myocardial infarction"),
            h5("Age >65  years is 1 point, age > 75 contributes 2 points")
            
            # output
            
        )
    )
))
