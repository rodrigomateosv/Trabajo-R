El conjunto de datos neonatos contiene información sobre una muestra de 320 recién nacidos 
en un hospital durante un año que cumplieron el tiempo normal de gestación. 
Calcular el decil 8 del peso de los recién nacidos de madres fumadoras durante el embarazo.

estas son las variables del csv "peso","sexo","edad","tabaco","cigarros","tabaco.antes","apgar1","apgar5"

# Asegúrate de tener instalado el paquete dplyr, si no, puedes instalarlo con install.packages("dplyr")
library(dplyr)

# Carga los datos. Asegúrate de tener la ruta correcta de tu archivo csv
neonatos <- read.csv("C:\\Users\\rodri\\Downloads\\neonatos.csv")
# Muestra la primera fila de neonatos
head(neonatos)

# Filtra los datos para las madres que fumaron durante el embarazo
neonatos_fumadores <- neonatos %>% filter(tabaco == "si") # Asume que "si" indica que la madre fumó durante el embarazo

# Calcula el decil 8 del peso
decil_8 <- quantile(neonatos_fumadores$peso, probs = 0.8)

# Imprime el decil 8
print(decil_8)
# Calcula el decil 8 del peso de los neonatos fumadores
decil_8 <- quantile(neonatos_fumadores$peso, probs = 0.8)
# Imprime el decil 8
print(decil_8)


