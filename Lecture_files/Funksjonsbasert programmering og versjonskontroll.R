# Del 2: Funksjonsbasert programmering, versjonskontroll #

# Funksjon som ganger med 2 

gang_med_2 <- function(x, output_som_melding = TRUE) {
  if(output_som_melding) {
    return(paste0("Det dobbelte av ", x, " er ", 2*x, "."))
    } 
  x * 2
}

gang_med_2(2)


# Funksjonen med error-melding

gang_med_2 <- function(x = 0, output_som_melding = TRUE) {
  if(is.na(x)) {
    stop("x kan ikke være NA din idiot!", call. = FALSE)
  }
  if(output_som_melding) {
    return(paste0("Det dobbelte av ", x, " er ", 2*x, "."))
   } 
   x * 2
}

gang_med_2(NA) 

# Funksjon som slår sammen navn #

first_name <- c("Eystein", "Thomas", "Mina")
last_name <- c("Meese", "Jebsen", "Gaupseth")

full_name <- function(x, y) {
  full_name <- paste0(first_name, " ", last_name)
  full_name <- as.data.frame(full_name) %>% 
    mutate(name_in_upper_case = str_to_upper(full_name)) 
  return(full_name)
}

full_name(first_name, last_name)



# Histogram for hver kolonne i datasettet mtcars 

filter_data <- function(data, variabel) {
  data %>% 
    ggplot(aes(x = {{variabel}})) +
    geom_histogram()
}

mtcars %>% filter_data(hp)

gridExtra:: # Plasserne grafene i ggplot
purrr::map(mtcars, ~filter_data(data = mtcars, variabel = .))

# Median of mtcars using map

purrr::map_df(mtcars, .f = median)


# Git og Github



