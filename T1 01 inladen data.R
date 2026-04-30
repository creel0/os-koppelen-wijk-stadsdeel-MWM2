# inladen data
df <- read.csv2("/mp/kennisvelden/20_Kennisvelden/14_Dienstverl en org/10_Onderzoeken/2026 Visie op digitaal Nijmegen/RES_COMPLETES_2814a187-94e7-492c-9c12-718c2b4592c9  2026-04-28 01_23.csv", 
               sep = ';')

# adressenbestand inladen
library(readxl)

adres2026_pc <- read_excel("/mp/kennisvelden/20_Kennisvelden/14_Dienstverl en org/10_Onderzoeken/2026 Visie op digitaal Nijmegen/adres2026_pc.xlsx")
View(adres2026_pc)  


                            
