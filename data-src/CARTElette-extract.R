library(CARTElette)

dep_sf_simplifiee <- charger_carte(
  nivsupra = "DEP", geometrie_simplifiee = TRUE)
saveRDS(dep_sf_simplifiee, "data/dep_sf_simplifiee.RDS")

reg_sf_simplifiee <- charger_carte(
  nivsupra = "REG", geometrie_simplifiee = TRUE)
saveRDS(reg_sf_simplifiee, "data/reg_sf_simplifiee.RDS")

com_sf_plm <- charger_carte(COG = 2021, nivsupra = "COM", enlever_PLM = TRUE, geometrie_simplifiee = FALSE)
saveRDS(com_sf_plm, "data/com_sf_plm.RDS")

com_sf_noplm <- charger_carte(COG = 2021, nivsupra = "COM", enlever_PLM = FALSE, geometrie_simplifiee = FALSE)
saveRDS(com_sf_noplm, "data/com_sf_noplm.RDS")
