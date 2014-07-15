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
C5H8_O3__MACR_CH2OOE <- "1.03E-14 * exp(-1995/temp) * 0.3"
C5H8_O3__MVK_CH2OOE <- "1.03E-14 * exp(-1995/temp) * 0.2"
C5H8_O3__MACROOA_HCHO <- "1.03E-14 * exp(-1995/temp) * 0.3"
C5H8_O3__MVKOOA_HCHO <- "1.03E-14 * exp(-1995/temp) * 0.2"

# Place the reaction objects into a vector
reactions <- ls(pattern = "__")

# Define the initial concentrations of non-oxidant species
C5H8 <- 1.5589E15
MACR <- 0
MVK <- 0
MACROOA <- 0
MVKOOA <- 0
CH2OOE <- 0
HCHO <- 0

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

# Obtain the products that not oxidants
if(exists("oxidant_prod") == TRUE){
products_no_ox <- reactants[which(products != oxidant_prod)]
}

if(exists("oxidant_prod") == FALSE){
  products_no_ox <- products
}

# Set initial concentrations for products
for (i in 1:length(products_no_ox)){
yini <- c(yini,
          eval(parse(text = ls(pattern = paste("^",
                                               products_no_ox[i], "$", sep = '')))))
}

yini <- c(1.56E15, 0, 0, 1.56E15, 0, 0, 1.56E15, 0, 0, 1.56E15, 0, 0)

# Build a function to pass over to the integrator step
kinetics <- function(t, y, p){
  
  # Evaluation of rate constants
  #k1 <- eval(parse(text=C5H8_OH__ISOPAO2))
  
  k1 <- eval(parse(text=C5H8_O3__MACR_CH2OOE))
  k2 <- eval(parse(text=C5H8_O3__MVK_CH2OOE))
  k3 <- eval(parse(text=C5H8_O3__MACROOA_HCHO))
  k4 <- eval(parse(text=C5H8_O3__MVKOOA_HCHO))
  
  # Equations here
  #ISO <- -k1*y[1]*OH_rad_cm3
  #ISOPAO2 <- k1*y[1]*OH_rad_cm3
  #list(c(ISO, ISOPAO2))
  
  C5H8 <- -k1 * y[1] * ozone_molecules_cm3
  MACR <- k1 * y[1] * ozone_molecules_cm3
  CH2OOE <- k1 * y[1] * ozone_molecules_cm3
  
  C5H8 <- -k2 * y[1] * ozone_molecules_cm3
  MVK <- k2 * y[1] * ozone_molecules_cm3
  CH2OOE <- k2 * y[1] * ozone_molecules_cm3
  
  C5H8 <- -k3 * y[1] * ozone_molecules_cm3
  MACROOA <- k3 * y[1] * ozone_molecules_cm3
  HCHO <- k3 * y[1] * ozone_molecules_cm3
  
  C5H8 <- -k4 * y[1] * ozone_molecules_cm3
  MVKOOA <- k4 * y[1] * ozone_molecules_cm3
  HCHO <- k4 * y[1] * ozone_molecules_cm3  
  
  list(c(C5H8, MACR, CH2OOE,
         C5H8, MVK, CH2OOE,
         C5H8, MACROOA, HCHO,
         C5H8, MVKOOA, HCHO))
  
}

# Perform model integrations and create a matrix object
out <- bimd(func = kinetics, times = times, y = yini, parms = NULL)

# Plot a time series for each of the reactant and product concentrations
plot(out, type = "l", lwd = 2)

head(out)
tail(out)
