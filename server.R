library(shiny)
library(shinydashboard)
library(readxl)
library(dygraphs)
library(markdown)
#library(forecast)
library(tseries)
library(tsoutliers)



#setwd("C:/Users/Dinu Level A/Desktop/Documents/APP2")

d1 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 1,col_names = TRUE)

d2 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 2,col_names = TRUE)

d3 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 3,col_names = TRUE)

d4 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 4,col_names = TRUE)

d5 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 5,col_names = TRUE)

d6 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 6,col_names = TRUE)

d7 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 7,col_names = TRUE)

d8 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 8,col_names = TRUE)

d9 <-  read_excel("data/Wheat data forecasted.xlsx",sheet = 9,col_names = TRUE)

d10 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 10,col_names = TRUE)

d11 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 11,col_names = TRUE)

d12 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 12,col_names = TRUE)

d13 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 13,col_names = TRUE)

d14 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 14,col_names = TRUE)

d15 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 15,col_names = TRUE)

d16 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 16,col_names = TRUE)
 
d17 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 17,col_names = TRUE)


d18 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 18,col_names = TRUE)

d19 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 19,col_names = TRUE)

d20 <- read_excel("data/Wheat data forecasted.xlsx",sheet = 20,col_names = TRUE)
#low
#d5 <-subset(d1, select = c(1,4,10,11))
#open
#d3 <-subset(d1, select = c(1,2,14,15))
#high
#d4 <-subset(d1, select = c(1,3,18,19))

#INdore- wheat last
d2 <-subset(d2, select = c(1,5,6,7))
#Punjab-wheat last
d1 <-subset(d1, select = c(1,5,6,7))
#MH-wheat last
d3 <- subset(d3, select= c(1,5,6,7))
#Rice
d4 <- subset(d4, select= c(1,5,6,7))
d5 <- subset(d5, select= c(1,5,6,7))
d6 <- subset(d6, select= c(1,5,6,7))
d7 <- subset(d7, select= c(1,5,6,7))
d8<- subset(d8, select= c(1,5,6,7))
d9 <- subset(d9, select= c(1,5,6,7))
d10 <- subset(d10,select=c(1,5,6,7))
d11<- subset(d11,select=c(1,5,6,7))
d12<- subset(d12,select=c(1,5,6,7))
d13 <- subset(d13,select=c(1,5,6,7))
d14 <- subset(d14,select=c(1,5,6,7))
d15 <- subset(d15,select=c(1,5,6,7))
d16 <- subset(d16,select=c(1,5,6,7))
d17 <- subset(d17,select=c(1,5,6,7))
d18 <- subset(d18,select=c(1,5,6,7))
d19 <- subset(d19,select=c(1,5,6,7))
d20 <- subset(d20,select=c(1,5,6,7))


d4$`Date GMT` <- as.POSIXct(d4$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts4 <- irts(time=d4$`Date GMT`,value=as.matrix(d4[,2:4]))

d5$`Date GMT` <- as.POSIXct(d5$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts5 <- irts(time=d5$`Date GMT`,value=as.matrix(d5[,2:4]))

d6$`Date GMT` <- as.POSIXct(d6$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts6 <- irts(time=d6$`Date GMT`,value=as.matrix(d6[,2:4]))

d7$`Date GMT` <- as.POSIXct(d7$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts7 <- irts(time=d7$`Date GMT`,value=as.matrix(d7[,2:4]))

d8$`Date GMT` <- as.POSIXct(d8$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts8 <- irts(time=d8$`Date GMT`,value=as.matrix(d8[,2:4]))

d9$`Date GMT` <- as.POSIXct(d9$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts9 <- irts(time=d9$`Date GMT`,value=as.matrix(d9[,2:4]))

d10$`Date GMT` <- as.POSIXct(d10$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts10 <- irts(time=d10$`Date GMT`,value=as.matrix(d10[,2:4]))

d11$`Date GMT` <- as.POSIXct(d11$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts11 <- irts(time=d11$`Date GMT`,value=as.matrix(d11[,2:4]))

d12$`Date GMT` <- as.POSIXct(d12$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts12 <- irts(time=d12$`Date GMT`,value=as.matrix(d12[,2:4]))

d13$`Date GMT` <- as.POSIXct(d13$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts13 <- irts(time=d13$`Date GMT`,value=as.matrix(d13[,2:4]))


d14$`Date GMT` <- as.POSIXct(d14$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts14 <- irts(time=d14$`Date GMT`,value=as.matrix(d14[,2:4]))

d15$`Date GMT` <- as.POSIXct(d15$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts15 <- irts(time=d15$`Date GMT`,value=as.matrix(d15[,2:4]))


d16$`Date GMT` <- as.POSIXct(d16$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts16 <- irts(time=d16$`Date GMT`,value=as.matrix(d16[,2:4]))


d17$`Date GMT` <- as.POSIXct(d17$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts17 <- irts(time=d17$`Date GMT`,value=as.matrix(d17[,2:4]))

d18$`Date GMT` <- as.POSIXct(d18$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts18 <- irts(time=d18$`Date GMT`,value=as.matrix(d18[,2:4]))

d19$`Date GMT` <- as.POSIXct(d19$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts19 <- irts(time=d19$`Date GMT`,value=as.matrix(d19[,2:4]))

d20$`Date GMT` <- as.POSIXct(d20$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts20 <- irts(time=d20$`Date GMT`,value=as.matrix(d20[,2:4]))
#Pu
#Punjab-last
d1$`Date GMT` <- as.POSIXct(d1$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts1 <- irts(time=d1$`Date GMT`,value=as.matrix(d1[,2:4]))

#Indore-last
d2$`Date GMT` <- as.POSIXct(d2$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts2 <- irts(time=d2$`Date GMT`,value=as.matrix(d2[,2:4]))

#MH-lasst
d3$`Date GMT` <- as.POSIXct(d3$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
ts3 <- irts(time=d3$`Date GMT`,value=as.matrix(d3[,2:4]))

#high
#d4$`Date GMT` <- as.POSIXct(d4$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
#ts4 <- irts(time=d4$`Date GMT`,value=as.matrix(d4[,2:4]))

#low
#d5$`Date GMT` <- as.POSIXct(d5$`Date GMT`, format = "%Y-%m-%d", tz="GMT")
#ts5 <- irts(time=d5$`Date GMT`,value=as.matrix(d5[,2:4]))

shinyServer(function(input, output) {

output$plot1 <- renderDygraph({  
  
      dygraph(ts1) %>% 
      dyRangeSelector() %>% 
      # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
      dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
      dyHighlight(highlightCircleSize = 5
                  #highlightSe iesOpts = list(strokeWidth = 2)
      ) %>%
      dyOptions(axisLineColor = "navy", gridLineColor = "grey")
    
  })
output$plot2 <- renderDygraph({
  
  dygraph(ts2) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot3 <- renderDygraph({
  
  dygraph(ts3) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot4 <- renderDygraph({
  
  dygraph(ts4) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot5 <- renderDygraph({
  
  dygraph(ts5) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot6 <- renderDygraph({
  
  dygraph(ts6) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot7 <- renderDygraph({
  
  dygraph(ts7) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot8 <- renderDygraph({
  
  dygraph(ts8) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot9 <- renderDygraph({
  
  dygraph(ts9) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})


output$plot10 <- renderDygraph({
  
  dygraph(ts10) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot11 <- renderDygraph({
  
  dygraph(ts11) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})


output$plot12 <- renderDygraph({
  
  dygraph(ts12) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})
output$plot13 <- renderDygraph({
  
  dygraph(ts13) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot14 <- renderDygraph({
  
  dygraph(ts14) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot15 <- renderDygraph({
  
  dygraph(ts15) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot16 <- renderDygraph({
  
  dygraph(ts16) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  

  })

output$plot17 <- renderDygraph({
  
  dygraph(ts17) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})


output$plot18 <- renderDygraph({
  
  dygraph(ts18) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})

output$plot19<- renderDygraph({
  
  dygraph(ts19) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})
output$plot20<- renderDygraph({
  
  dygraph(ts20) %>% 
    dyRangeSelector() %>% 
    # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
    dyHighlight(highlightCircleSize = 5
                #highlightSe iesOpts = list(strokeWidth = 2)
    ) %>%
    dyOptions(axisLineColor = "navy", gridLineColor = "grey")
  
  
})


#output$plot5 <- renderDygraph({  
    
#    dygraph(ts5) %>% 
 #     dyRangeSelector() %>% 
      # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
  #    dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
  #    dyHighlight(highlightCircleSize = 5
   #               #highlightSe iesOpts = list(strokeWidth = 2)
    #  ) %>%
     # dyOptions(axisLineColor = "navy", gridLineColor = "grey")
    
#  })
#  output$plot4 <- renderDygraph({  
    
#    dygraph(ts4) %>% 
#      dyRangeSelector() %>% 
      # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
#      dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
#      dyHighlight(highlightCircleSize = 5
                  #highlightSe iesOpts = list(strokeWidth = 2)
#      ) %>%
#      dyOptions(axisLineColor = "navy", gridLineColor = "grey") })
    
   
 # output$plot3 <- renderDygraph({  
    
#    dygraph(ts3) %>% 
#      dyRangeSelector() %>% 
      # dyRangeSelector(    dateWindow = c("2017-09-23", "2017-10-01")) %>%
 #     dyLegend(show = "always", hideOnMouseOut = FALSE) %>%
#      dyHighlight(highlightCircleSize = 5
                  #highlightSe iesOpts = list(strokeWidth = 2)
#      ) %>%
 #     dyOptions(axisLineColor = "navy", gridLineColor = "grey")
    
#  })
  
  
 
  
} ) 

