# Asegúrate de tener instalado el paquete dplyr, si no, puedes instalarlo con install.packages("dplyr")
library(dplyr)

# Carga los datos. Asegúrate de tener la ruta correcta de tu archivo csv
neonatos <- read.csv("ruta/a/tu/archivo.csv")

# Filtra los datos para las niñas
neonatos_niñas <- neonatos %>% filter(sexo == "mujer") # Asume que "femenino" indica niña

# Asegúrate de tener instalado el paquete lmtest, si no, puedes instalarlo con 
install.packages("lmtest")
library(lmtest)

# Ajusta un modelo de regresión lineal con transformación logarítmica (modelo potencial)
modelo <- lm(log(apgar5) ~ log(apgar1), data = neonatos_niñas)

# Predice la puntuación Apgar5 para una niña recién nacida con una puntuación Apgar1 de 6
puntuacion_apgar5_predicha_log <- predict(modelo, newdata = data.frame(apgar1 = 6))

# Transforma la puntuación predicha de logaritmo a la escala original
puntuacion_apgar5_predicha <- exp(puntuacion_apgar5_predicha_log)


# Verificar NAs en las variables de interés
sum(is.na(neonatos$apgar1))
sum(is.na(neonatos$apgar5))
sum(is.na(neonatos$sexo))


# Imprime la puntuación Apgar5 predicha
print(puntuacion_apgar5_predicha)
