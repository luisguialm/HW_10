co2perCap<-read.csv("data/co2_emissions_tonnes_per_person_gapminder.csv")

co2_report<-function(dat,country=NULL, year=NULL){
   m<-paste0("X",year)
 stopifnot(any(names(dat[,2:ncol(dat)])==m)) # line to avoid years or countries that are not present in the data set.  
 stopifnot(any(country==dat$country))
  if (!is.null(country)) {
    value <- dat[dat$country %in% country,names(dat)==m]
    all_countries<-  dat[,names(dat)==m]
  }  
  stopifnot(is.nan(value))
  stopifnot(is.na(value))

  # A - Bottom 10% of emitters in that year  
  # B- Bottom 11-20% emitters in that year   
  # C- Bottom 21-30% emitters in that year   
  # D- Bottom 31-40% emitters in that year   
  # F- Greater than 40% of emitters in that year   
  
  if(value>quantile(all_countries,0.4)){
     grade<-"F"
  }else if(value>quantile(all_countries,0.3)){
     grade<-"D"
  }else if(value>quantile(all_countries,0.2)){
        grade<-"C"
  }else if(value>quantile(all_countries,0.1)){
        grade<-"B"
  }else{
          grade<-"A"  
  }

  paste("Grade: ",grade,"In",year,country,"had",value,"tonnes CO2 per person per year")
}

co2_report(dat=co2perCap,country="United States",year=)
