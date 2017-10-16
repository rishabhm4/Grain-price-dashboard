library(shinydashboard)
library(tseries)
library(dygraphs)

 dashboardPage(skin="yellow",
  dashboardHeader(title = "GRAIN Price dashboard"
                  #,tags$li(class="dropdown",tags$a(img(src="images.png",align="right",height=38,width=120), href="https://levelacommodities.com/"))
  ),
  dashboardSidebar( 
    
    sidebarMenu( 
      menuItem( icon=icon("home"),"Home",tabName="home"),
    menuItem( text = "WHEAT",
     menuItem("DARA",
                 menuSubItem("Khanna-PN", tabName = "dashboard"))
    , menuItem("LOKVAN HAND CLEAN",
                menuSubItem("Indore-MP",tabName = "dashboard1")),
    menuItem("LOKVAN HIGH",
                menuSubItem("Mumbai-MH",tabName = "dashboard2")),
    menuItem("MILL",
             menuSubItem("Delhi",tabName = "dashboard9")
             ,menuSubItem("Ahemdabad-GJ",tabName = "dashboard10"),
             menuSubItem("Banglore-KK",tabName = "dashboard11")
             ),
    menuItem("MALORAJ",
             menuSubItem("Indore-MP",tabName = "dashboard12"),
             menuSubItem("Nagpur-MH",tabName = "dashboard13")
             )
    ,
    menuItem("Lokvan machine clean",
             menuSubItem("Indore-MP",tabName = "dashboard14")),
    menuItem("Sharbati High",
             menuSubItem("Mumbai-MH",tabName = "dashboard15"))
    
    
    ),
    menuItem(text="RICE",
    menuItem("Kolam Raw",
             menuSubItem("AP(Mill) Mumbai-MH",
                tabName = "dashboard3")
             ,menuSubItem("BPT(Mill) Nagpur-MH",tabName = "dashboard16")
             ,menuSubItem("HMT(Mill) Mumbai-MH",tabName = "dashboard17")
             ,menuSubItem("HMT(Mill) Nagpur-MH",tabName = "dashboard18")
             ,menuSubItem("SURATI(Mill) Mumbai-MH",tabName = "dashboard19")
             ),
    menuItem("Sharbati Sella",
      menuSubItem("Taraori-HR",tabName = "dashboard4")
      ),
   
    menuItem("Sharbati Steam",
     menuSubItem("DELHI",tabName = "dashboard5")
    
     )
    
    )
    ,
    menuItem( text = "BAJRA"
     , menuItem("RAJASTHAN",tabName = "dashboard6"),
    menuItem("DELHI",tabName = "dashboard7"),
    menuItem("MAHARASTRA",tabName = "dashboard8")
    )
    
    
    
    
    
    # WHEAT--LOKVAN HIGH--
     # menuItem("Mumbai(LOKVAN HIGH)",tabName= "dashboard2"),
      #menuItem("Widgets", tabName = "widgets", icon = icon("area-chart"))
    )
  ),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    
    tabItems(
      # First tab content
      tabItem(
        tabName="home"
        ,includeMarkdown("home.md")
      ),
      tabItem(tabName = "dashboard",
              fluidPage(
                titlePanel("Wheat Khanna-Punjab"),
                
         
                           dygraphOutput("plot1"),includeMarkdown("read.md")
         
              
              )),
      
      tabItem(tabName = "dashboard1",
              fluidPage(
                titlePanel("Wheat indore"),
               
                    
                                dygraphOutput("plot2")
                    ,includeMarkdown("read.md"))
                  
                ) 
      ,
      
      tabItem(tabName = "dashboard2",
              fluidPage(
                titlePanel("Wheat Maharastra"),
                        dygraphOutput("plot3")
        
                ,includeMarkdown("read.md"))
                  
                
      ),
      tabItem(tabName = "dashboard9",
              dygraphOutput("plot10"),
              includeMarkdown("read.md"))
      ,
      tabItem(tabName = "dashboard10",
              dygraphOutput("plot11"),includeMarkdown("read.md"))
      ,
      tabItem(tabName = "dashboard11",
              dygraphOutput("plot12"),includeMarkdown("read.md"))
      ,
      tabItem(tabName = "dashboard12",
              dygraphOutput("plot13"),includeMarkdown("read.md"))
      ,
      
      tabItem(tabName = "dashboard13",
              dygraphOutput("plot14"),includeMarkdown("read.md"))
      ,
      
      tabItem(tabName = "dashboard14",
              dygraphOutput("plot15"),includeMarkdown("read.md"))
      ,
      tabItem(tabName = "dashboard15",
              dygraphOutput("plot16"),includeMarkdown("read.md"))
      ,
   
      
      
      
      tabItem(tabName = "dashboard3",
             
                titlePanel("RICE AP(Mill) Mumbai"),
                
                  dygraphOutput("plot4")
                  ,includeMarkdown("read.md")
              
              ),
      tabItem(tabName = "dashboard16",
              
              titlePanel("RICE BPT(Mill) Nagpur-MH"),
              
              dygraphOutput("plot17")
              ,includeMarkdown("read.md")
              
      ),
      tabItem(tabName = "dashboard17",
              
              titlePanel("RICE HMT(Mill) Mumbai-MH"),
              
              dygraphOutput("plot18")
              ,includeMarkdown("read.md")
              
      ),
      tabItem(tabName = "dashboard18",titlePanel("RICE HMT(Mill) Nagpur-MH"),
              dygraphOutput("plot19"),
              includeMarkdown("read.md")
              )
     ,
     tabItem(tabName = "dashboard19",titlePanel("RICE SURATI(Mill) Mumbai-MH"),
             dygraphOutput("plot20"),
             includeMarkdown("read.md")
     )
     ,
      tabItem(tabName = "dashboard4",
             
                titlePanel("RICE Mill Taraori"),
             
                dygraphOutput("plot5")
                       
               
                  ,includeMarkdown("read.md")
                )
      ,
      tabItem(tabName = "dashboard5",
          
                titlePanel("RICE DELHI"),
               
                  dygraphOutput("plot6")
                           
                  
                  ,includeMarkdown("read.md")
                  
                ) 
      
    ,
      
      tabItem(tabName = "dashboard6",
             
                titlePanel("BAJRA RAJASTHAN"),
                  tabPanel("Price chart", dygraphOutput("plot7")
                           
                  )
                  ,box(side = "right",height="250px",includeMarkdown("read.md"))
                  
                 )
      
      ,
      tabItem(tabName = "dashboard7",
                titlePanel("BAJRA DELHI"),
                tabPanel("Price chart", dygraphOutput("plot8")
                           
                  )
                  ,box(side = "right",height="250px",includeMarkdown("read.md")))
                  
                
      
      ,
      tabItem(tabName = "dashboard8",
             
                titlePanel("BAJRA MAHARASTRA"),
                 dygraphOutput("plot9")
                           
                  
                  ,includeMarkdown("read.md")
                  
                
      
      )
      
      ))
 )
      # Second tab content
#      tabItem(tabName = "widgets")
    
  

