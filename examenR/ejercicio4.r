El conjunto de datos neonatos contiene información de una muestra de 320 recién nacidos 
en un hospital durante un año. Si una puntuación Apgar1 menor que 4 indica 
que el recién nacido está deprimido, 
¿qué porcentaje de mujeres recién nacidas en la muestra están deprimidas?

# Cargar el paquete dplyr
library(dplyr)

# Asegúrate de que tus datos estén cargados en un dataframe llamado 'neonatos'

# Filtrar los datos para obtener solo las mujeres recién nacidas
mujeres <- neonatos %>%
  filter(sexo == "mujer")

# Calcular el número total de mujeres recién nacidas
total_mujeres <- nrow(mujeres)

# Filtrar los datos para obtener las mujeres recién nacidas deprimidas
mujeres_deprimidas <- mujeres %>%
  filter(apgar1 < 4)

# Calcular el número de mujeres recién nacidas deprimidas
total_mujeres_deprimidas <- nrow(mujeres_deprimidas)

# Calcular el porcentaje de mujeres recién nacidas deprimidas
porcentaje_mujeres_deprimidas <- (total_mujeres_deprimidas / total_mujeres)*100

# Imprimir el resultado
print(paste("El porcentaje de mujeres recién nacidas deprimidas es:", porcentaje_mujeres_deprimidas, "%"))
