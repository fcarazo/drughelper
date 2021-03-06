#' @title Download data from Chembl
#' @description If it has not been downloaded yet, downloads data of drugs
#' @param dir Name of the directory where data is downloaded
#' @importFrom utils download.file
#' @export

downloadAbsentFile <- function (dir = tempdir()){

  if(!file.exists(paste0(tempdir(),"/datosChembl.Rdata"))) {

    URL <- "https://raw.githubusercontent.com/jaaaviergarcia/drughelper/main/datosChembl.RData"
    download.file(URL ,destfile =  paste0(tempdir(), "/datosChembl.RData"))
  }
}


