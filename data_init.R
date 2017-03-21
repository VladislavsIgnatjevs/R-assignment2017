#Part 1. Select a non-trivial dataset (with several variables and several 
#hundred data points). If you cannot find an appropriate dataset, you could use, for example, the built-in dataset airquality. Import your data from CSV into a data frame.

#New York Air Quality Measurements
data = airquality;


for (i in 1:nrow(data)){
  if (data[i,5] == 5) {
    print(data[i,5]);
    rbind(may1973,data[i,1:6]);
  } else if (data[i,5] == 6) {
    print(data[i,5]);
    rbind(june1973,data[i,1:6]);
  }else if (data[i,5] == 7) {
    print(data[i,5]);
    rbind(july1973,data[i,1:6]);
  } else if (data[i,5] == 8) {
    print(data[i,5]);
    rbind(aug1973,data[i,1:6]);
  }else if (data[i,5] == 9) {
    print(data[i,5]);
    rbind(sep1973,data[i,1:6]);
  }
}


#first 31 days
#may1973 = head(data,31);
#september1973 = tail(data,31);






#data is from May to September 1973.
#A data frame with 154 observations on 6 variables.

#[,1]	Ozone	numeric	Ozone (ppb)
#[,2]	Solar.R	numeric	Solar R (lang)
#[,3]	Wind	numeric	Wind (mph)
#[,4]	Temp	numeric	Temperature (degrees F)
#[,5]	Month	numeric	Month (1--12)
#[,6]	Day	numeric	Day of month (1--31)



#subset(yourdata, stringcol == 'Bacteria')
#contab <- with(airquality,table(OzHi = Ozone > 80, Month))


#Part 2. Calculate basic statistical measures 
#(means and medians, standard deviations, etc.). 
#Plot one or more relationships in your data 
#(e.g. show graphically any relationship 
#between ozone, solar, wind and temperature in the airquality data).




#Part 3. Would you expect any of your data to follow a normal distribution? 
#Construct a normal distribution dataset and perform an appropriate comparison. 
#Plot the result.



#Part 4. Explore your data with linear regression, 
#and present the results graphically.



#Part 5. Build a simple interface to your data using Shiny. 
#Provide at least two controls for a user to explore the data 
#(e.g. (i) toggling ozone, solar, wind and temperature; 
#and (ii) toggling graph type).
