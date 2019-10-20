## Del 1: Introduksjon, databehandling og visualisering ##

# Packages #

library(tidyverse)

# Introduksjon #

# Homogene - alle elementene må være av samme datatype #
my_vector <- c(1,2,3)

my_matrix <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)

my_array <- array(1:12, dim = c(2,3,2))

# Heterogene - elementene kan ha forskjellig datatyper #

my_list <- list(c(1,2,3), 'text', 4)

my_df <- data.frame(c(1,2,3), c('text1', 'text2', 'text3'), c(4,4,4))

# Importering av CSV/Excel-filer #

# For å rydde opp i rotete data, kan pakken "tidyr" brukes #

 
  