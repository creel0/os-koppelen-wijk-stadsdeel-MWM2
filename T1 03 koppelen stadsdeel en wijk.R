# koppelen
df <- df %>% 
  left_join(adres2026_pc, by = 'PV_Postcode' )

# opslaan als sav.bestand. 
library(haven)

write_sav(df, "/mp/kennisvelden/20_Kennisvelden/14_Dienstverl en org/10_Onderzoeken/2026 Visie op digitaal Nijmegen/data_visie_digitaal_nijmegen.sav" )

