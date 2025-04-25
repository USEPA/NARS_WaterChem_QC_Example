library(quarto)

outDir <- paste0(here::here(), "/output/Example_NLA_Water_Chem_QC_Output_", Sys.Date())
dir.create(path = outDir, showWarnings = FALSE, recursive = TRUE)

inDir_raw <- paste0(here::here(), "/data") 
inDir_data <- paste0(here::here(), "/data") 
fileout <- paste0("Example_NLA_Water_Chem_QC_Output_", Sys.Date(), ".html")

setwd("./code")
quarto_render(paste0(here::here(), "/code/NLA_QC_document.qmd"), 
              output_file = fileout, 
              output_format = 'html',
              execute_params = list(outDir = outDir,
                                    inDir_raw = inDir_raw,
                                    inDir_data = inDir_data))

# Move file to outDir folder
setwd("..")
file.rename(from = paste0(here::here(), "/code/", fileout), to = paste0(outDir, "/", fileout))
