avocado <- read_csv("data/avocado.csv")
avocado <- avocado %>% mutate(Date = ymd(Date))
#str(avocado)

#clean names
avocado <- clean_names(avocado)
#head(avocado)


# Subset data by region
avocado_regional <- avocado %>%
	filter(region %in% c( "West", "SouthCentral", "TotalUS",
												"Midsouth", "Southeast", "Northeast")) 

# Dataset for entire US
avocado_total <- avocado %>%
	filter(region == "TotalUS")

