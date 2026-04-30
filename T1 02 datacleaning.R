# kolommen weghalen die niet nodig zijn.
names(df)

df <- df %>% 
  select (-"BEGINDATUM", -"EINDDATUM", -"BEGINTIJD", -"EINDTIJD", -"REFERRER", -"GROEP", -"DOORLOOPTIJD",
          - "PV_Whatsapp_ja_ik_word_graag_via_Whatsapp_uitgenodigd_Dit__OPEN", -"PV_Burgerpeiling_2025" , -"PV_Burgerpeiling_2023" ,
          - "PV_Stadsdelen", - "PV_Stadsdelen")

adres2026_pc <- adres2026_pc %>% 
  select (-'wijk', -'wijkdeel_nr', -'stadsdeel_nr', -'woonplaats', -'straat', -'actief')
  
# postcodes bekijken
sort(unique(df$PV_Postcode))

# spaties verwijderen
df$PV_Postcode <- gsub(" ", "", df$PV_Postcode)

# hoofdletters maken
df$PV_Postcode <- toupper(df$PV_Postcode)

# kijken hoe postcode in beide df's eruit zien
str(df$PV_Postcode)
str(adres2026_pc)

# postcode hetzelfde noemen in beide df's
adres2026_pc <- adres2026_pc %>% 
  rename (PV_Postcode = postcode)
