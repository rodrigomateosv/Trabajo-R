El conjunto de datos neonatos contiene información sobre una muestra de 320 recién nacidos
 en un hospital durante un año que cumplieron el tiempo normal de gestación. 
 ¿Cuántos datos atípicos hay en la distribución del peso de los recién nacidos
 con una puntuación apgar1 mayor que 4?

 # Cargar el paquete dplyr
library(dplyr)

# Asegúrate de que tus datos estén cargados en un dataframe llamado 'neonatos'

# Filtrar los datos para obtener solo los recién nacidos con una puntuación Apgar1 mayor que 4
apgar1_mayor_4 <- neonatos %>%
  filter(apgar1 > 4)

# Calcular el primer cuartil (Q1), el tercer cuartil (Q3) y el rango intercuartílico (IQR)
Q1 <- quantile(apgar1_mayor_4$peso, 0.25)
Q3 <- quantile(apgar1_mayor_4$peso, 0.75)
IQR <- Q3 - Q1

# Calcular los límites para los datos atípicos
limite_inferior <- Q1 - 1.5 * IQR
limite_superior <- Q3 + 1.5 * IQR

# Filtrar los datos para obtener solo los datos atípicos
datos_atipicos <- apgar1_mayor_4 %>%
  filter(peso < limite_inferior | peso > limite_superior)

# Calcular el número de datos atípicos
num_datos_atipicos <- nrow(datos_atipicos)

# Imprimir el resultado
print(paste("El número de datos atípicos en la distribución del peso de los recién nacidos con una puntuación Apgar1 mayor que 4 es:", num_datos_atipicos))
