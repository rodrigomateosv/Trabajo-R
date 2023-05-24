library("tidyverse")

Datos <- read.csv("C:\\Users\\rodri\\Downloads\\neonatos.csv")


# Para la puntuación Apgar
table(Datos)

# Porcentaje de niños deprimidos (Apgar <= 3)
mean(Datos <= 3) * 100
#Comparar las distribuciones de puntuaciones Apgar 
#para madres de menos de 20 años y madres de 20 años o más:
# Filtrar los datos para obtener las puntuaciones Apgar de madres de menos de 20 años y mujeres
puntuaciones_menos_20_mujer <- Datos[Datos$edad == "menor de 20" & Datos$sexo == "mujer"]

# Filtrar los datos para obtener las puntuaciones Apgar de madres de 20 años o más y mujeres
puntuaciones_20_o_mas_mujer <- Datos[Datos[edad] == "mayor de 20" & Datos[sexo] == "mujer"]

# Comparar las distribuciones de puntuaciones Apgar para madres de menos de 20 años y mujeres
table(puntuaciones_menos_20_mujer)

# Comparar las distribuciones de puntuaciones Apgar para madres de 20 años o más y mujeres
table(puntuaciones_20_o_mas_mujer)

