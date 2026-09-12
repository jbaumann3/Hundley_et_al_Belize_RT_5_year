#### load packages
library(tidyverse)

### read in data
test<- read_csv("chloro_test_7_19_23.csv")
head(test)

test<-chloro_test_7_19_23

### Convert to long format
longtest<- test %>%
  pivot_longer(cols = '1':'12', names_to = "column", values_to = "absorbance")
longtest

### Convert data to wider format (creating columns for each wavelength level)
widetest<- longtest %>%
  pivot_wider(names_from = 'wavelength', values_from = 'absorbance')
  
#accounting for blank correct (subtracting the 750 wavelength value from 664 and 630 wavelength values to get the actual values for calculating chlorophyll)
widetest$A664 <- widetest$'664'- widetest$'750'
widetest$A630 <- widetest$'630'- widetest$'750'  

#calc chl-a and chl-c2; 0.555 is the path length
widetest$chl_a <- ((11.43*widetest$A664) - (0.64*widetest$A630))/0.555
widetest$chl_c2 <- ((27.09*widetest$A630) - (3.63*widetest$A664))/0.555
