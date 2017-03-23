# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$air_plot <- renderPlot({
    
  
    
    if (input$detail ==1) {
      
      if (input$temp_scope == 1) {
      counts <- data[,4];
      barplot(counts, main="Overview of temperature (F) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
              col=c("darkblue","red","blue","green","blueviolet","brown", "brown1","darkblue","darkcyan","darkgoldenrod","orange","palevioletred","red3","deepskyblue4"),names.arg=data[,6]);
      }
      if (input$temp_scope == 2) {
        counts <- fahr_to_celsius(data[,4]);
        barplot(counts, main="Overview of temperature (C) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
                col=c("darkblue","red","blue","green","blueviolet","brown", "brown1","darkblue","darkcyan","darkgoldenrod","orange","palevioletred","red3","deepskyblue4"),names.arg=data[,6]);
      }
      if (input$temp_scope == 3) {
        counts <- fahr_to_kelvin(data[,4]);
        barplot(counts, main="Overview of temperature (K) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
                col=c("darkblue","red","blue","green","blueviolet","brown", "brown1","darkblue","darkcyan","darkgoldenrod","orange","palevioletred","red3","deepskyblue4"),names.arg=data[,6]);
      }
      
      
    }
    
    
    #if relationship
    if (input$detail ==4) {
      if (input$measure1 == 1) {
        m1 <- 1;
      }
      if (input$measure1 == 2) {
        m1 <- 2;
      }
      if (input$measure1 == 3) {
        m1 <- 3;
      }
      if (input$measure1 == 4) {
        m1 <- 4
      }
      if (input$measure2 == 1) {
        m2<- 1;
      }
      if (input$measure2 == 2) {
        m2<- 2;
      }
      if (input$measure2 == 3) {
        m2<- 3;
      }
      if (input$measure2 == 4) {
        m2<- 4;
      }
      
      if (input$month == 'May') {
        if (!is.null(input$measure1) && !is.null(input$measure2)) {

          
          #ozone vs temperature in may
          plot(may1973[,m1], may1973[,m2],main=paste(colnames(may1973[m1])," relationship to ",colnames(may1973[m2])," in May 1973, NY"),col=c("darkblue","red","blue","green","orange"),xlab=colnames(may1973[m1]),ylab=colnames(may1973[m2]));
          
        }

      } else if (input$month == 'June') {
        if (!is.null(input$measure1) && !is.null(input$measure2)) {
          
          #ozone vs temperature in may
          plot(june1973[,m1], june1973[,m2],main=paste(colnames(june1973[m1])," relationship to ",colnames(june1973[m2])," in June 1973, NY"),col=c("darkblue","red","blue","green","orange"),xlab=colnames(may1973[m1]),ylab=colnames(may1973[m2]));
          
        }


      } else if (input$month == 'July') {
        if (!is.null(input$measure1) && !is.null(input$measure2)) {
          
          #ozone vs temperature in may
          plot(july1973[,m1], july1973[,m2],main=paste(colnames(july1973[m1])," relationship to ",colnames(july1973[m2])," in July 1973, NY"),col=c("darkblue","red","blue","green","orange"),xlab=colnames(may1973[m1]),ylab=colnames(may1973[m2]));
          
        }


      } else if (input$month == 'August') {
        if (!is.null(input$measure1) && !is.null(input$measure2)) {
          
          #ozone vs temperature in may
          plot(aug1973[,m1], aug1973[,m2],main=paste(colnames(aug1973[m1])," relationship to ",colnames(may1973[m2])," in Aug 1973, NY"),col=c("darkblue","red","blue","green","orange"),xlab=colnames(may1973[m1]),ylab=colnames(may1973[m2]));
          
        }

      } else if (input$month == 'September') {
        if (!is.null(input$measure1) && !is.null(input$measure2)) {
          
          #ozone vs temperature in may
          plot(sep1973[,m1], sep1973[,m2],main=paste(colnames(sep1973[m1])," relationship to ",colnames(sep1973[m2])," in Sept 1973, NY"),col=c("darkblue","red","blue","green","orange"),xlab=colnames(may1973[m1]),ylab=colnames(may1973[m2]));
          
        }

      }
    }

      
    

    if (input$detail == 2) {
      
      if (input$plot_type == 2) {
       
      #if average
      #average temperature and ozone by month
      if (input$temp_scope == 1) {
        #fahr
        counts <- mean_data[,2];
        barplot(counts, main="Average temperature (F) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
                col=c("darkblue","red","blue","green","magenta"),names.arg=c("May", "June", "July", "August", "September"));
      }
      if (input$temp_scope == 2) {
        #cels
        counts <- fahr_to_celsius(mean_data[,2]);
        barplot(counts, main="Average temperature (C) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
                col=c("darkblue","red","blue","green","cyan"),names.arg=c("May", "June", "July", "August", "September"));
        
      }
      if (input$temp_scope == 3) {
        #kelv
        counts <- fahr_to_kelvin(mean_data[,2]);
        barplot(counts, main="Average temperature (K) in NY, May-Sept 1973", legend = rownames(counts),beside = FALSE,
                col=c("darkblue","red","blue","green","orange"),names.arg=c("May", "June", "July", "August", "September"));
      }
      } else {
        if (input$temp_scope == 1) {
          #fahr
          counts <- mean_data[,2];
          plot(counts, main="Average temperature (F) in NY, May-Sept 1973", legend = rownames(counts),
                  col=c("darkblue","red","blue","green","magenta"));
        }
        if (input$temp_scope == 2) {
          #cels
          counts <- fahr_to_celsius(mean_data[,2]);
          plot(counts, main="Average temperature (C) in NY, May-Sept 1973", legend = rownames(counts),
                  col=c("darkblue","red","blue","green","cyan"));
          
        }
        if (input$temp_scope == 3) {
          #kelv
          counts <- fahr_to_kelvin(mean_data[,2]);
          plot(counts, main="Average temperature (K) in NY, May-Sept 1973", legend = rownames(counts),
                  col=c("darkblue","red","blue","green","orange"));
        }
      }

      
    } 
    if (input$detail == 3) {
    #if overview
      
      if (input$detail_type == 1) {
        m1 <- 1;
      }
      if (input$detail_type == 2) {
        m1 <- 2;
      }
      if (input$detail_type == 3) {
        m1 <- 3;
      }
      if (input$detail_type == 4) {
        m1 <- 4
      }
      
      
    
    if (input$month == 'May') {
      #temperature per month daily
      counts <- may1973[,m1]
      barplot(counts, main=paste("Daily ",colnames(may1973[m1]), " in May"), horiz=FALSE,col=c("darkblue","blue","red","green","orange","magenta","cyan"),
              names.arg=may1973[,6],xlab="day",ylab=colnames(may1973[m1]));
    } else if (input$month == 'June') {
      #temperature per month daily
      counts <- june1973[,m1]
      barplot(counts, main=paste("Daily ",colnames(may1973[m1]), " June"), horiz=FALSE,col=c("darkblue","blue","red","green","orange","magenta","cyan"),
              names.arg=june1973[,6],xlab="day",ylab=colnames(may1973[m1]));
      
    } else if (input$month == 'July') {
      #temperature per month daily
      counts <- july1973[,m1]
      barplot(counts, main=paste("Daily ",colnames(may1973[m1]), " July"), horiz=FALSE,col=c("darkblue","blue","red","green","orange","magenta","cyan"),
              names.arg=july1973[,6],xlab="day",ylab=colnames(may1973[m1]));
    } else if (input$month == 'August') {
      #temperature per month daily
      counts <- aug1973[,m1]
      barplot(counts, main=paste("Daily ",colnames(may1973[m1]), " August"), horiz=FALSE,col=c("darkblue","blue","red","green","orange","magenta","cyan"),
              names.arg=aug1973[,6],xlab="day",ylab=colnames(may1973[m1]));
    } else if (input$month == 'September') {
      #temperature per month daily
      counts <- sep1973[,m1]
      barplot(counts, main=paste("Daily ",colnames(may1973[m1]), " September"), horiz=FALSE,col=c("darkblue","blue","red","green","orange","magenta","cyan"),
              names.arg=sep1973[,6],xlab="day",ylab=colnames(may1973[m1]));
    }
      
    }
    
    
    
  })
}
