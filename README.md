# HW_10

1. Add the co2 data (data/co2_emissions_tonnes_per_person_gapminder.csv) to the working directory of your Environment. 

2. Run the function co2_report, found in the file `HW_10.R` in order to save it to the global environment of R. 

3. Run the function by inputing the country and the year. E.g. `co2_report("Country",year)`

The function will tell the grade the country gets based on its emissions per capita, based on the following key:
  A - Bottom 10% of emitters in that year  
  B - Bottom 11-20% emitters in that year   
  C - Bottom 21-30% emitters in that year   
  D - Bottom 31-40% emitters in that year   
  F - Greater than 40% of emitters in that year    

Here is an example of the function usage and output:
```
> co2_report(country="Kuwait",year="2007")
[1] "Grade:  F In 2007 Kuwait had 30.1 tonnes CO2 per person per year"
```
by Luis Andres Guillen and Hartford Johnson
