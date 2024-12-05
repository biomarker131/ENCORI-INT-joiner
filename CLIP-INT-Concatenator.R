# Install and load dplyr if not already installed
# #Nota: seleccionar la instalación del binario, no del source (el source requiere compilar)
install.packages("dplyr") # only run if dplyr is not installed
#Correr DESDE AQUI
library(dplyr)

#transformar arcvhivo de texto en matriz de datos r
list.files()

data <- read.table("./INT/mmu-miR-450b-5p.txt", header = TRUE, sep = "\t")


# Assuming your data frame is named data

resultamba <- data %>%
  group_by(geneID) %>%
  summarise(
    geneID = first(geneID),
    across(miRNAid:strand, .fns=first),
    across(clipExpNum:degraExpNum, sum),#suma los experimentos
    across(RBP:cellline.tissue, .fns = ~ paste(.x, collapse = ", "))
)
# Guardar la tabla en un archivo


write.table(resultamba, "./INT/resultambas.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
print(head(resultamba))