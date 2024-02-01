archive_file <- tempfile(fileext = ".7z")
curl::curl_download(
  url = "https://wxs.ign.fr/x02uy2aiwjo9bm8ce5plwqmr/telechargement/prepackage/ADMINEXPRESS_SHP_TERRITOIRES_PACK_2023-12-19$ADMIN-EXPRESS_3-2__SHP_LAMB93_FXX_2023-12-19/file/ADMIN-EXPRESS_3-2__SHP_LAMB93_FXX_2023-12-19.7z",
  destfile = archive_file)
dest <- tempfile()
archive::archive_extract(archive_file, dir = dest)
file.rename(from = file.path(dest, "ADMIN-EXPRESS_3-2__SHP_LAMB93_FXX_2023-12-19/ADMIN-EXPRESS/1_DONNEES_LIVRAISON_2023-12-00156/ADE_3-2_SHP_LAMB93_FXX-ED2023-12-19"),
            to = "data/ADE-3-2")

files <- list.files("data/ADE-3-2", full.names = TRUE)
keep <- grep("[^_](REGION|COMMUNE)\\.[a-z]{3}$", files, value = TRUE)
setdiff(files, keep) |> unlink(force = TRUE)
