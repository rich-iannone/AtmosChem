# Build kinetics model and calculate the concentrations of each
# reactant over the model period

# Add require statements
require("deTestSet")

# Define constant temperature for model run
temp <- 298

# Set initial concentrations of ozone molecules
ozone_ppb <- 35
ozone_molecules_cm3 <- ozone_ppb * 2.46E10

# Set initial concentrations of OH radicals
OH_rad_cm3 <- 5.0E6

# Define sequence of time steps for model run integration steps
times <- seq(0, 3600*14, by = .1)




# Define the reaction and assign a rate constant calcuation
# as a string
C5H8_OH__ISOPAO2 <- "2.7E-11 * exp(390/temp) * 0.148"

# Place the reaction objects into a vector
reactions <- ls(pattern = "__")

# Define the initial concentrations of non-oxidant species
C5H8 <- 1.5589E15
ISOPAO2 <- 1000

# Initialize the vector of initial concentrations
yini <- vector(mode = "numeric", length = 0)

# Get the reactants for the reaction
reactants <-
  unlist(strsplit(unlist(
    strsplit(reactions[1], "__"))[1], "_"))

if (any(grepl("^OH$", reactants) == TRUE)) oxidant <- "OH"
if (any(grepl("^O3$", reactants) == TRUE)) oxidant <- "O3"
if (any(grepl("^NO3$", reactants) == TRUE)) oxidant <- "NO3"

# Obtain the reactants that not oxidants
reactants_no_ox <- reactants[which(reactants != oxidant)]

# Set initial concentrations for the reactants
yini <- c(yini,
          eval(parse(text = ls(pattern = paste("^",
                                               reactants_no_ox, "$", sep = '')))))

# Get the products for the reaction
products <-
  unlist(strsplit(unlist(
    strsplit(reactions[1], "__"))[2], "_"))

if (any(grepl("^OH$", products) == TRUE)) oxidant_prod <- "OH"
if (any(grepl("^O3$", products) == TRUE)) oxidant_prod <- "O3"
if (any(grepl("^NO3$", products) == TRUE)) oxidant_prod <- "NO3"

# Obtain the reactants that not oxidants
if(exists("oxidant_prod") == TRUE){
products_no_ox <- reactants[which(products != oxidant_prod)]
}

if(exists("oxidant_prod") == FALSE){
  products_no_ox <- products
}

# Set initial concentrations for products
yini <- c(yini,
          eval(parse(text = ls(pattern = paste("^",
                                               products_no_ox, "$", sep = '')))))

# Build a function to pass over to the integrator step
kinetics <- function(t, y, p){
  
  # Evaluation of rate constants
  k1 <- eval(parse(text=C5H8_OH__ISOPAO2))
  
  # Equations here
  ISO <- -k1*y[1]*OH_rad_cm3
  ISOPAO2 <- k1*y[2]*OH_rad_cm3
  list(c(ISO, ISOPAO2))
}

# Perform model integrations and create a matrix object
out <- bimd(func = kinetics, times = times, y = yini, parms = NULL)

# Plot a time series for each of the reactant and product concentrations
plot(out, type = "l", lwd = 2)


