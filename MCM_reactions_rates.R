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

# 1-Butanol (n-butanol)
NBUTOL_OH__C3H7CHO_HO2 <- "5.3E-12 * exp(140/temp) * 0.358"
NBUTOL_OH__NBUTOLAO2 <- "5.3E-12 * exp(140/temp) * 0.321"
NBUTOL_OH__NBUTOLBO2 <- "5.3E-12 * exp(140/temp) * 0.321"

# 2-Butanol (sec-butanol)
BUT2OL_OH__BUT2OLO2 <- "8.7E-12 * 0.361"
BUT2OL_OH__MEK_HO2 <- "8.7E-12 * 0.639"

# 2-Methyl-1-propanol (i-butanol)
IBUTOL_OH__IBUTOLBO2 <- "2.73E-12 * exp(352/temp) * 0.558"
IBUTOL_OH__IBUTOLCO2 <- "2.73E-12 * exp(352/temp) * 0.090"
IBUTOL_OH__IPRCHO_HO2 <- "2.73E-12 * exp(352/temp) * 0.352"

# 2-Methyl-2-propanol (t-butanol)
TBUTOL_OH__TBUTOLO2 <- "1.6E-12 * exp(-121/temp) * 0.888"
TBUTOL_OH__TC4H9O <- "1.6E-12 * exp(-121/temp) * 0.112"

# 3-Pentanol
PECOH_OH__DIEK_HO2 <- "1.22E-11 * 0.436"
PECOH_OH__HO3C5O2 <- "1.22E-11 * 0.070"
PECOH_OH__PE2ENEBO2 <- "1.22E-11 * 0.493"

# 2-Methyl-1-butanol
IPEAOH_OH__BUT2CHO_HO2 <- "1.12E-11 * 0.288"
IPEAOH_OH__HM2C43O2 <- "1.12E-11 * 0.258"
IPEAOH_OH__M2BUOL2O2 <- "1.12E-11 * 0.454"

# 3-Methyl-1-butanol (i-pentanal, i-amyl alcohol)
ME3BUOL_OH__C3ME3CHO_HO2 <- "1.31E-11 * 0.288"
ME3BUOL_OH__HM33C3O2 <- "1.31E-11 * 0.454"
ME3BUOL_OH__ME3BUOLO2 <- "1.31E-11 * 0.258"

# 2-Methyl-2-butanol 
IPECOH_OH__HO2M2C4O2 <- "3.85E-12 * 0.100"
IPECOH_OH__ME2BU2OLO2 <- "3.85E-12 * 0.701"
IPECOH_OH__PROL11MO2 <- "3.85E-12 * 0.199"

# 3-Methyl-2-butanol 
IPEBOH_OH__H2M3C4O2 <- "1.24E-11 * 0.074"
IPEBOH_OH__ME2BUOLO2 <- "1.24E-11 * 0.463"
IPEBOH_OH__MIPK <- "1.24E-11 * 0.463"

# Cyclohexanol
CYHEXOL_OH__CYHEXOLAO2 <- "1.77E-11 * 0.739"
CYHEXOL_OH__CYHEXONE <- "1.77E-11 * 0.261"

# 4-Hydroxy-4-methyl-2-pentanone (diacetone alcohol)
MIBKAOH_OH__MIBKAOHAO2 <- "2.88E-12 * 0.693"
MIBKAOH_OH__MIBKAOHBO2 <- "2.88E-12 * 0.270"
MIBKAOH_OH__MIBKHO4O2 <- "2.88E-12 * 0.037"
MIBKAOH__TBUTOLO2_CH3CO3 <- "J22"

# Ethane-1,2-diol (ethylene glycol) 
ETHGLY_OH__HOCH2CHO <- "1.45E-11"

# Propane-1,2-diol (propylene glycol)
PROPGLY_OH__ACETOL_HO2 <- "1.20E-11 * 0.613"
PROPGLY_OH__CH3CHOHCHO <- "1.20E-11 * 0.387"

# 2-Methyl-3-buten-2-ol
MBO_NO3__NMBOAO2 <- "4.6E-14*exp(-400/temp) * 0.65"
MBO_NO3__NMBOBO2 <- "4.6E-14*exp(-400/temp) * 0.35"
MBO_O3__HCHO_MBOOOA <- "1.0E-17 * 0.3"
MBO_O3__IBUTALOH_CH2OOB <- "1.0E-17 * 0.7"
MBO_OH__MBOAO2 <- "8.1E-12*exp(610/temp) * 0.67"
MBO_OH__MBOBO2 <- "8.1E-12*exp(610/temp) * 0.33"


####
# Reactions of aldehydes
####

# Methanal (formaldehyde) 
HCHO_hv__CO_HO2_HO2 <- "J11"
HCHO_hv__H2_CO <- "J11"
HCHO_NO3__HNO3_CO_HO2 <- "5.5E-16"
HCHO_OH__HO2_CO <- "5.4E-12 * exp(135/temp)"

# Ethanal (acetaldehyde)
CH3CHO__CH3O2_HO2_CO <- "J13"
CH3CHO_NO3__HNO3_CH3CO3 <- "1.4E-12 * exp(-1860/temp)"
CH3CHO_OH__CH3CO3 <- "4.7E-12 * exp(345/temp) * 0.95"
CH3CHO_OH__HCOCH2O2 <- "4.7E-12 * exp(345/temp) * 0.05"

# Propanal (proprionaldehyde) 
C2H5CHO_OH__C2H5CO3_HNO3 <- "3.24E-12 * exp(-1860/temp)"
C2H5CHO_OH__C2H5CO3 <- "4.9E-12 * exp(405/temp)"
C2H5CHO__C2H5O2_HO2_CO <- "J14"

# Butanal (butyraldehyde) 
C3H7CHO_NO3__C3H7CO3_HNO3 <- "1.7E-12 * exp(-1500/temp)"
C3H7CHO_OH__BUTALO2 <- "6.0E-12 * exp(410/temp) * 0.151"
C3H7CHO_OH__C3H7CO3 <- "6.0E-12 * exp(410/temp) * 0.849"
C3H7CHO__NC3H7O2_CO_HO2 <- "J15"
C3H7CHO__CH3CHO_C2H4 <- "J16"

# Methylpropanal (i-butyraldehyde) 
IPRCHO_NO3__IPRCO3_HNO3 <- "1.67E-12 * exp(-1460/temp)"
IPRCHO_OH__IBUTALBO2 <- "6.8E-12 * exp(410/temp) * 0.054"
IPRCHO_OH__IBUTALCO2 <- "6.8E-12 * exp(410/temp) * 0.059"
IPRCHO_OH__IPRCO3 <- "6.8E-12 * exp(410/temp) * 0.887"
IPRCHO__IC3H7O2_HO2_CO <- "J17"

# Pentanal (Valeraldehyde)
C4H9CHO_NO3__C4H9CO3_HNO3 <- "KNO3AL * 5.5"
C4H9CHO_OH__C4CHOBO2 <- "6.34E-12 * exp(448/temp) * 0.19"
C4H9CHO_OH__C4H9CO3 <- "6.34E-12 * exp(448/temp) * 0.81"
C4H9CHO__NC4H9O2 <- "J15"

# Propenal (Acrolein)
ACR_NO3__ACO3_HNO3 <- "1.72E-13 * exp(-1190/temp)" 
ACR_OH__ACO3 <- "0.68 * 2.00E-11"
ACR_OH__ACO3B <- "0.255 * 2.00E-11"
ACR_OH__OCCOHCO2 <- "0.065 * 2.00E-11"
ACR_O3__CH2OOB_GLYOX <- "0.5 * 2.9E-19"
ACR_O3__GLYOOB_HCHO <- "0.5 * 2.9E-19"
ACR__ACO3 <- "0.3 * J18"
ACR__C2H4_CO <- "0.4 * J18"
ACR__HCHO_HO2_CO <- "0.3 * J18"

# 2-Methylpropenal (methacrolein) 
MACR_NO3__MACO3_HNO3 <- "3.4E-15"
MACR_O3__HCHO_MGLYOOB <- "1.4E-15 * exp(-2100/temp) * 0.12"
MACR_O3__MGLYOX_CH2OOG <- "1.4E-15 * exp(-2100/temp) * 0.88"
MACR_OH__MACO3 <- "8.0E-12 * exp(380/temp) * 0.45"
MACR_OH__MACRO2 <- "8.0E-12 * exp(380/temp) * 0.47"
MACR_OH__MACROHO2 <- "8.0E-12 * exp(380/temp) * 0.08"
MACR__CH3C2H2O2_CO_HO2 <- "J18" 
MACR__MACO3_HO2 <- "J19"

# 2-Butenal (crotonaldehyde) 
C4ALDB_NO3__C3DBCO3_HNO3 <- "6E-15 * 0.65"
C4ALDB_NO3__C4CONO3O2 <- "6E-15 * 0.175"
C4ALDB_NO3__C4NO3COO2 <- "6E-15 * 0.175"
C4ALDB_O3__CH3CHO_GLYOOB <- "1.58E-18 * 0.5"
C4ALDB_O3__GLYOX_CH3CHOOB <- "1.58E-18 * 0.5"
C4ALDB_OH__C3DBCO3 <- "0.5 * 3.4E-11"
C4ALDB_OH__C4OCCOHCO2 <- "0.25 * 3.4E-11"
C4ALDB_OH__COCCOH2CO2 <- "0.25 * 3.4E-11"
C4ALDB__CH3CHO_CO_HO2_CO_HO2 <- "1.44 * J18" 

####
# Reactions of alkanes
####

# Methane
CH4_CL__CH3O2 <- "6.6E-12 * exp(-1240/temp)"
CH4_OH__CH3O2 <- "1.85E-12 * exp(-1690/temp)"

# Ethane
C2H6_CL__C2H5O2 <- "8.3E-11 * exp(-100/temp)"
C2H6_OH__C2H5O2 <- "6.9E-12 * exp(-1000/temp)"

# Propane
C3H8_CL__IC3H7O2 <- "1.4E-10 * 0.43 * exp(75/temp)"
C3H8_CL__NC3H7O2 <- "1.4E-10 * 0.59 * exp(-90/temp)"
C3H8_OH__IC3H7O2 <- "7.6E-12 * exp(-585/temp) * 0.736"
C3H8_OH__NC3H7O2 <- "7.6E-12 * exp(-585/temp) * 0.264"

# n-Butane
NC4H10_CL__NC4H9O2 <- "2.05E-10 * 0.44 * exp(-120/temp)"
NC4H10_CL__SC4H9O2 <- "2.05E-10 * 0.59 * exp(55/temp)"
NC4H10_OH__NC4H9O2 <- "9.8E-12 * exp(-425/temp) * 0.127"
NC4H10_OH__SC4H9O2 <- "9.8E-12 * exp(-425/temp) * 0.873"

# 2-Methyl-propane (i-butane) 
IC4H10_CL__IC4H9O2 <- "1.43E-10 * 0.564"
IC4H10_CL__TC4H9O2 <- "1.43E-10 * 0.436"
IC4H10_OH__IC4H9O2 <- "1.16E-17 * temp@2 * exp(225/temp) * 0.206"
IC4H10_OH__TC4H9O2 <- "1.16E-17 * temp@2 * exp(225/temp) * 0.794"

# Pentane (n-pentane)
NC5H12_CL__PEAO2 <- "2.80E-10 * 0.222" 
NC5H12_CL__PEBO2 <- "2.80E-10 * 0.558"
NC5H12_CL__PECO2 <- "2.80E-10 * 0.220"
NC5H12_OH__PEAO2 <- "2.44E-17 * temp@2 * exp(183/temp) * 0.083"
NC5H12_OH__PEBO2 <- "2.44E-17 * temp@2 * exp(183/temp) * 0.568"
NC5H12_OH__PECO2 <- "2.44E-17 * temp@2 * exp(183/temp) * 0.349"

# 2-Methylbutane (1-pentane)
IC5H12_CL__IPEAO2 <- "2.20E-10 * 0.408"
IC5H12_CL__IPEBO2 <- "2.20E-10 * 0.342"
IC5H12_CL__IPECO2 <- "2.20E-10 * 0.250"
IC5H12_OH__IPEAO2 <- "3.70E-12 * 0.087"
IC5H12_OH__IPEBO2 <- "3.70E-12 * 0.297"
IC5H12_OH__IPECO2 <- "3.70E-12 * 0.616"

# Hexane (n-hexane)
NC6H14_CL__HEXAO2 <- "3.40E-10 * 0.182"
NC6H14_CL__HEXBO2 <- "3.40E-10 * 0.457"
NC6H14_CL__HEXCO2 <- "3.40E-10 * 0.361"
NC6H14_OH__HEXAO2 <- "1.53E-17 * temp@2 * exp(414/temp) * 0.061"
NC6H14_OH__HEXBO2 <- "1.53E-17 * temp@2 * exp(414/temp) * 0.421"
NC6H14_OH__HEXCO2 <- "1.53E-17 * temp@2 * exp(414/temp) * 0.518"

# 2-Methylpentane
M2PE_CL__M2PEAO2 <- "2.90E-10 * 0.321"
M2PE_CL__M2PEBO2 <- "2.90E-10 * 0.269"
M2PE_CL__M2PECO2 <- "2.90E-10 * 0.213"
M2PE_CL__M2PEDO2 <- "2.90E-10 * 0.197"
M2PE_OH__M2PEAO2 <- "5.30E-12 * 0.063"
M2PE_OH__M2PEBO2 <- "5.30E-12 * 0.218"
M2PE_OH__M2PECO2 <- "5.30E-12 * 0.267"
M2PE_OH__M2PEDO2 <- "5.30E-12 * 0.452"

# 3-Methylpentane
M3PE_CL__M3PEAO2 <- "2.80E-10 * 0.317"
M3PE_CL__M3PEBO2 <- "2.80E-10 * 0.530"
M3PE_CL__M3PECO2 <- "2.80E-10 * 0.153"
M3PE_OH__M3PEAO2 <- "5.40E-12 * 0.060"
M3PE_OH__M3PEBO2 <- "5.40E-12 * 0.413"
M3PE_OH__M3PECO2 <- "5.40E-12 * 0.527"

# 2,2-Dimethylbutane
M22C4_CL__M22C43O2 <- "1.71E-10 * 0.461"
M22C4_CL__M22C4O2 <- "1.71E-10 * 0.154"
M22C4_CL__M33C4O2 <- "1.71E-10 * 0.386"
M22C4_OH__M22C43O2 <- "3.22E-11*exp(-781/temp) * 0.632"
M22C4_OH__M22C4O2 <- "3.22E-11*exp(-781/temp) * 0.092"
M22C4_OH__M33C4O2 <- "3.22E-11*exp(-781/temp) * 0.276"

# 2,3-Dimethylbutane
M23C4_CL__M22C43O2 <- "2.30E-10 * 0.478"
M23C4_CL__M22C4O2 <- "2.30E-10 * 0.522"
M23C4_OH__M22C43O2 <- "1.24E-17 * temp@2 * exp(494/temp) * 0.877"
M23C4_OH__M22C4O2 <- "1.24E-17 * temp@2 * exp(494/temp) * 0.123"

# Heptane (n-heptane)
NC7H16_CL__HEPTO2 <- "3.90E-10"
NC7H16_OH__HEPTO2 <- "1.59E-17 * temp@2 * exp(478/temp)"

# 2-Methylhexane
M2HEX_CL__M2HEXAO2 <- "3.50E-10 * 0.779"
M2HEX_CL__M2HEXBO2 <- "3.50E-10 * 0.221"
M2HEX_OH__M2HEXAO2 <- "6.86E-12 * 0.625"
M2HEX_OH__M2HEXBO2 <- "6.86E-12 * 0.375"

# 3-Methylhexane
M3HEX_CL__M3HEXAO2 <- "3.11E-10 * 0.793"
M3HEX_CL__M3HEXBO2 <- "3.11E-10 * 0.207"
M3HEX_OH__M3HEXAO2 <- "7.15E-12 * 0.558"
M3HEX_OH__M3HEXBO2 <- "7.15E-12 * 0.442"

# Octane (n-octane)
NC8H18_CL__OCTO2 <- "4.60E-10"
NC8H18_OH__OCTO2 <- "2.76E-17 * temp@2 * exp(378/temp)"

# Nonane (n-nonane)
NC9H20_CL__NONO2 <- "4.80E-10"
NC9H20_OH__NONO2 <- "2.51E-17 * temp@2 * exp(447/temp)"

# Decane (n-decane)
NC10H22_CL__DECO2 <- "5.55E-10"
NC10H22_OH__DECO2 <- "3.13E-17 * temp@2 * exp(416/temp)"

# Hendecane (n-undecane)
NC11H24_CL__UDECO2 <- "6.17E-10"
NC11H24_OH__UDECO2 <- "1.29E-11"

# Dodecane (n-dodecane)
NC12H26_CL__DDECO2 <- "6.74E-10"
NC12H26_OH__DDECO2 <- "1.39E-11"

# Cyclohexane
CHEX_CL__CHEXO2 <- "3.50E-10"
CHEX_OH__CHEXO2 <- "2.88E-17 * temp@2 * exp(309/temp)"

####
# Reactions of alkenes
####

# Ethene (ethylene)
C2H4_NO3__ETHENO3O2 <- "3.3E-12 * exp(-2880/temp)"
C2H4_O3__HCHO_CH2OOA <- "9.1E-15 * exp(-2580/temp)"
C2H4_OH__HOCH2CH2O2 <- "KMT15"

# Propene (propylene)
C3H6_NO3__PRONO3AO2 <- "4.6E-13 * exp(-1155/temp) * 0.35"
C3H6_NO3__PRONO3BO2 <- "4.6E-13 * exp(-1155/temp) * 0.65"
C3H6_O3__CH2OOB_CH3CHO <- "5.5E-15 * exp(-1880/temp) * 0.5"
C3H6_O3__CH3CHOOA_HCHO <- "5.5E-15 * exp(-1880/temp) * 0.5"
C3H6_OH__HYPROPO2 <- "KMT16 * 0.87"
C3H6_OH__IPROPOLO2 <- "KMT16 * 0.13"

# 1-Butene
BUT1ENE_NO3__BU1ENO3O2 <- "3.2E-13 * exp(-950/temp) * 0.65"
BUT1ENE_NO3__C43NO34O2 <- "3.2E-13 * exp(-950/temp) * 0.35"
BUT1ENE_O3__C2H5CHOOA_HCHO <- "3.55E-15 * exp(-1745/temp) * 0.5"
BUT1ENE_O3__CH2OOB_C2H5CHO <- "3.55E-15 * exp(-1745/temp) * 0.5"
BUT1ENE_OH__HO3C4O2 <- "6.6E-12 * exp(465/temp) * 0.13"
BUT1ENE_OH__NBUTOLAO2 <- "6.6E-12 * exp(465/temp) * 0.87"


