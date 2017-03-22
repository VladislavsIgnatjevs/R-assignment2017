#functions
kelvin_to_celsius <- function(temp) {
  #Converts Kelvin to Celsius
  Celsius <- temp - 273.15
  Celsius
}
fahr_to_kelvin <- function(temp) {
  #Converts Fahrenheit to Kelvin
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  kelvin
}
fahr_to_celsius <- function(temp) {
  #Converts Fahrenheit to Celsius using fahr_to_kelvin() and kelvin_to_celsius()
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}