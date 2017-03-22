
source('functions.R');

#Part 1. Select a non-trivial dataset (with several variables and several
#hundred data points). If you cannot find an appropriate dataset, you could use, for example, the built-in dataset airquality. Import your data from CSV into a data frame.

#New York Air Quality Measurements
data = airquality;


#init vars
may1973 = 1:6;

mean_ozone_may1973 = 0;
mean_solar_r_may1973 = 0;
#wind in mph
mean_wind_may1973 = 0;
mean_temp_may1973 = 0;

june1973 = 1:6;
mean_ozone_june1973 = 0;
mean_solar_r_june1973 = 0;
#wind in mph
mean_wind_june1973 = 0;
mean_temp_june1973 = 0;

july1973 = 1:6;
mean_ozone_july1973 = 0;
mean_solar_r_july1973 = 0;
#wind in mph
mean_wind_july1973 = 0;
mean_temp_july1973 = 0;

aug1973 = 1:6;
mean_ozone_aug1973 = 0;
mean_solar_r_aug1973 = 0;
#wind in mph
mean_wind_aug1973 = 0;
mean_temp_aug1973 = 0;

sep1973 = 1:6;
mean_ozone_sep1973 = 0;
mean_solar_r_sep1973 = 0;
#wind in mph
mean_wind_sep1973 = 0;
mean_temp_sep1973 = 0;



#data is from May to September 1973.
#A data frame with 154 observations on 6 variables.
#[,1]	Ozone	numeric	Ozone (ppb)
#[,2]	Solar.R	numeric	Solar R (lang)
#[,3]	Wind	numeric	Wind (mph)
#[,4]	Temp	numeric	Temperature (degrees F)
#[,5]	Month	numeric	Month (1--12)
#[,6]	Day	numeric	Day of month (1--31)

for (i in 1:nrow(data)) {
  if (data[i, 5] == 5) {
    may1973 <- rbind(may1973, data[i,1:6]);
    
  } else if (data[i, 5] == 6) {
    june1973 <- rbind(june1973, data[i,1:6]);
    
    
  } else if (data[i, 5] == 7) {
    july1973 <- rbind(july1973, data[i,1:6]);
    
  } else if (data[i, 5] ==8) {
    aug1973 <- rbind(aug1973, data[i,1:6]);
    
  } else if (data[i, 5] == 9) {
    sep1973 <- rbind(sep1973, data[i,1:6]);
    
  }
}

#due to using rbind the first row is added 123456 which is not needed
may1973 = may1973[-1,];
june1973 = june1973[-1,];
july1973=july1973[-1,];
aug1973=aug1973[-1,];
sep1973 =sep1973[-1,];

#order month data by day asc
may1973[order('Day'),];
june1973[order('Day'),];
july1973[order('Day'),];
aug1973[order('Day'),];
sep1973[order('Day'),];


#Part 2. Calculate basic statistical measures
#(means and medians, standard deviations, etc.).

#get statistics for each month
#calculate means,sds, variances but ignore NA

#MAY
mean_ozone_may1973 = mean(may1973[,1],na.rm=TRUE);
mean_solar_r_may1973 = mean(may1973[,2],na.rm=TRUE);
mean_wind_may1973 = mean(may1973[,3],na.rm=TRUE);
mean_temp_may1973 = mean(may1973[,4],na.rm=TRUE);


sd_ozone_may1973 = sd(may1973[,1],na.rm=TRUE);
sd_solar_r_may1973 = sd(may1973[,2],na.rm=TRUE);
sd_wind_may1973 = sd(may1973[,3],na.rm=TRUE);
sd_temp_may1973 = sd(may1973[,4],na.rm=TRUE);

var_ozone_may1973 = var(may1973[,1],na.rm=TRUE);
var_solar_r_may1973 = var(may1973[,2],na.rm=TRUE);
var_wind_may1973 = var(may1973[,3],na.rm=TRUE);
var_temp_may1973 = var(may1973[,4],na.rm=TRUE);


#JUNE
mean_ozone_june1973 = mean(june1973[,1],na.rm=TRUE);
mean_solar_r_june1973 = mean(june1973[,2],na.rm=TRUE);
mean_wind_june1973 = mean(june1973[,3],na.rm=TRUE);
mean_temp_june1973 = mean(june1973[,4],na.rm=TRUE);

#calculate std
sd_ozone_june1973 = sd(june1973[,1],na.rm=TRUE);
sd_solar_r_june1973 = sd(june1973[,2],na.rm=TRUE);
sd_wind_june1973 = sd(june1973[,3],na.rm=TRUE);
sd_temp_june1973 = sd(june1973[,4],na.rm=TRUE);

var_ozone_june1973 = var(june1973[,1],na.rm=TRUE);
var_solar_r_june1973 = var(june1973[,2],na.rm=TRUE);
var_wind_june1973 = var(june1973[,3],na.rm=TRUE);
var_temp_june1973 = var(june1973[,4],na.rm=TRUE);


#JULY
mean_ozone_july1973 = mean(july1973[,1],na.rm=TRUE);
mean_solar_r_july1973 = mean(july1973[,2],na.rm=TRUE);
mean_wind_july1973 = mean(july1973[,3],na.rm=TRUE);
mean_temp_july1973 = mean(july1973[,4],na.rm=TRUE);

#calculate std
sd_ozone_july1973 = sd(july1973[,1],na.rm=TRUE);
sd_solar_r_july1973 = sd(july1973[,2],na.rm=TRUE);
sd_wind_july1973 = sd(july1973[,3],na.rm=TRUE);
sd_temp_july1973 = sd(july1973[,4],na.rm=TRUE);

var_ozone_july1973 = var(july1973[,1],na.rm=TRUE);
var_solar_r_july1973 = var(july1973[,2],na.rm=TRUE);
var_wind_july1973 = var(july1973[,3],na.rm=TRUE);
var_temp_july1973 = var(july1973[,4],na.rm=TRUE);

#AUGUST
mean_ozone_aug1973 = mean(aug1973[,1],na.rm=TRUE);
mean_solar_r_aug1973 = mean(aug1973[,2],na.rm=TRUE);
mean_wind_aug1973 = mean(aug1973[,3],na.rm=TRUE);
mean_temp_aug1973 = mean(aug1973[,4],na.rm=TRUE);

#calculate std
sd_ozone_aug1973 = sd(aug1973[,1],na.rm=TRUE);
sd_solar_r_aug1973 = sd(aug1973[,2],na.rm=TRUE);
sd_wind_aug1973 = sd(aug1973[,3],na.rm=TRUE);
sd_temp_aug1973 = sd(aug1973[,4],na.rm=TRUE);

var_ozone_aug1973 = var(aug1973[,1],na.rm=TRUE);
var_solar_r_aug1973 = var(aug1973[,2],na.rm=TRUE);
var_wind_aug1973 = var(aug1973[,3],na.rm=TRUE);
var_temp_aug1973 = var(aug1973[,4],na.rm=TRUE);

#SEPTEMBER
mean_ozone_sep1973 = mean(sep1973[,1],na.rm=TRUE);
mean_solar_r_sep1973 = mean(sep1973[,2],na.rm=TRUE);
mean_wind_sep1973 = mean(sep1973[,3],na.rm=TRUE);
mean_temp_sep1973 = mean(sep1973[,4],na.rm=TRUE);

#calculate std
sd_ozone_sep1973 = sd(sep1973[,1],na.rm=TRUE);
sd_solar_r_sep1973 = sd(sep1973[,2],na.rm=TRUE);
sd_wind_sep1973 = sd(sep1973[,3],na.rm=TRUE);
sd_temp_sep1973 = sd(sep1973[,4],na.rm=TRUE);

var_ozone_sep1973 = var(sep1973[,1],na.rm=TRUE);
var_solar_r_sep1973 = var(sep1973[,2],na.rm=TRUE);
var_wind_sep1973 = var(sep1973[,3],na.rm=TRUE);
var_temp_sep1973 = var(sep1973[,4],na.rm=TRUE);



#Plot one or more relationships in your data
#(e.g. show graphically any relationship
#between ozone, solar, wind and temperature in the airquality data).


ozone_may <-may1973[,1];
temper_may<-fahr_to_celsius(may1973[,4]);
#ozone vs temperature in may
plot(ozone_may, temper_may,main="Ozone(ppb) relationship to Temperature(C) in May 1973, NY",xlab="Ozone(ppb) per day",ylab="Temperature C");

#ozone to solar
solar_may = may1973[,2];
plot(ozone_may, solar_may,main="Ozone(ppb) relationship to Solar radiation amount in May 1973, NY",xlab="Ozone(ppb) per day",ylab="Solar radiation(lang)");

#average wind to month
mean_data = data.frame(month = c('May', 'June', 'July', 'August', 'September'), 
           avg_temp = c(mean_temp_may1973,mean_temp_june1973, mean_temp_july1973,mean_temp_aug1973,mean_temp_sep1973),
           avg_sun_rad = c(mean_solar_r_may1973,mean_solar_r_june1973, mean_solar_r_july1973,mean_solar_r_aug1973,mean_solar_r_sep1973),
           avg_wind = c(mean_wind_may1973,mean_wind_june1973, mean_wind_july1973,mean_wind_aug1973,mean_wind_sep1973),
           avg_ozone = c(mean_ozone_may1973,mean_ozone_june1973, mean_ozone_july1973,mean_ozone_aug1973,mean_ozone_sep1973));


# months <- table('May', 'June', 'July', 'August', 'September');
# temp_all <- table(mean_temp_may1973,mean_temp_june1973, mean_temp_july1973,mean_temp_aug1973,mean_temp_aug1973);

# average temperature by month
counts <- fahr_to_celsius(mean_data[,2])
barplot(counts, main="Average temperature (C) by month", horiz=FALSE,
        names.arg=c("May", "June", "July", "August", "September"));




# # average temperature and ozone by month
# counts <- table(fahr_to_celsius(mean_data[,2]),mean_data[,4])
# barplot(counts, main="Average temperature (C) by month vs ozone", legend = rownames(counts),beside = TRUE,
#         col=c("darkblue","red"),names.arg=c("May", "June", "July", "August", "September"));


#temperature per month daily
counts <- may1973[,4]
barplot(counts, main="Daily temp (F) in May", horiz=FALSE,
        names.arg=may1973[,6],xlab="day",ylab="temp (F)");



#Part 3. Would you expect any of your data to follow a normal distribution?
#Construct a normal distribution dataset and perform an appropriate comparison.
#Plot the result.

#ozone
may_pnorm_ozone = pnorm(may1973[,1],mean_ozone_may1973,sd_ozone_may1973);
#radiation
may_pnorm_rad = pnorm(may1973[,2],mean_solar_r_may1973,sd_solar_r_may1973);
#wind
may_pnorm_wind= pnorm(may1973[,3],mean_wind_may1973,sd_wind_may1973);
#temp
may_pnorm_temp = pnorm(may1973[,4],mean_temp_may1973,sd_temp_may1973);

#average wind to month
pnorm_may = data.frame(ozone = c(may_pnorm_ozone), 
                       rad = c(may_pnorm_rad),
                       wind = c(may_pnorm_wind),
                       temp = c(may_pnorm_temp),
                       day = c(may1973[,6]));




#Part 4. Explore your data with linear regression,
#and present the results graphically.
# plot(ozone_may, temper_may,xlab="Ozone ppb per day",ylab="Temperature C");
# abline(lm(ozone_may ~ temper_may));



#Part 5. Build a simple interface to your data using Shiny.
#Provide at least two controls for a user to explore the data
#(e.g. (i) toggling ozone, solar, wind and temperature;
#and (ii) toggling graph type).


#contab <- with(airquality,table(OzHi = Ozone > 80, Month))



