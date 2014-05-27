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

# 1-Propanol (n-propanol)
NPROPOL_OH__C2H5CHO_HO2 <- "4.6E-12 * exp(70/temp) * 0.494"
NPROPOL_OH__C2H5CHO_HO1C3O2 <- "4.6E-12 * exp(70/temp) * 0.063" 
NPROPOL_OH__C2H5CHO_HYPROPO2 <- "4.6E-12 * exp(70/temp) * 0.443"

# 2-Propanol (i-propanol)
IPROPOL_OH__CH3COCH3_HO2 <- "2.6E-12 * exp(200/temp) * 0.86"
IPROPOL_OH__IPROPOLO2 <- "2.6E-12 * exp(200/temp) * 0.139"
