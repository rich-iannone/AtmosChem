# Gas-phase reactions and rate constants for atmospherically-relevant species
# from the Master Chemical Mechanism (MCM) v3.2

####
# Reactions of alcohols
####

# Methanol
CH3OH_OH__HO2_HCHO <- "2.85E-12 * exp(-345/temp)"

# Ethanol
C2H5OH_OH__C2H5O  <- "3.0E-12 * exp(20/temp) * 0.05"
C2H5OH_OH__CH3CHO_HO2 <- "3.0E-12 * exp(20/temp) * 0.9"
C2H5OH_OH__HOCH2CH2O2 <- "3.0E-12 * exp(20/temp) * 0.05"
