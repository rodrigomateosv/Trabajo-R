#El conjunto de datos neonatos contiene información sobre una muestra de 320 recién nacidos
 #en un hospital durante un año que cumplieron el tiempo normal de gestación. 
 #Según los coeficientes de asimetría y apuntamiento de la puntuación Apgar5 de las mujeres recién nacidos 
 #se puede concluir que la distribución es:

		
A)Asimétrica hacia la izquierda y más apuntada que una distribución normal.

		
B)Asimétrica hacia la derecha y más apuntada que una distribución normal.

		
C)Asimétrica hacia la derecha y menos apuntada que una distribución normal.

		
D)Casi simétrica y más apuntada que una distribución normal.

		
F)Asimétrica hacia la izquierda y menos apuntada que una distribución normal.

# Instalar y cargar el paquete e1071 si aún no está instalado
if (!require(e1071)) {
    install.packages("e1071")
    library(e1071)
}

# Filtrar los datos para obtener solo las mujeres recién nacidas
library(dplyr)
datos_mujeres <- neonatos %>% filter(sexo == "mujer")

# Calcular la asimetría (sesgo) y apuntamiento (curtosis)
asimetria <- e1071::skewness(datos_mujeres$apgar5)
apuntamiento <- e1071::kurtosis(datos_mujeres$apgar5)

# Interpretar los resultados

# Instalar y cargar el paquete e1071 si aún no está instalado
if (!require(e1071)) {
    install.packages("e1071")
    library(e1071)
}

# Filtrar los datos para obtener solo las mujeres recién nacidas
library(dplyr)
datos_mujeres <- neonatos %>% filter(sexo == "mujer")

# Calcular la asimetría (sesgo) y apuntamiento (curtosis)
asimetria <- e1071::skewness(datos_mujeres$apgar5)
apuntamiento <- e1071::kurtosis(datos_mujeres$apgar5)

# Interpretar los resultados
if (asimetria < 0) {
    sesgo <- "Asimétrica hacia la izquierda"
} else {
    sesgo <- "Asimétrica hacia la derecha"
}

if (apuntamiento > 0) {
    kurtosis_interpretation <- "más apuntada que una distribución normal"
} else {
    kurtosis_interpretation <- "menos apuntada que una distribución normal"
}

cat("La distribución es", sesgo, "y", kurtosis_interpretation)

