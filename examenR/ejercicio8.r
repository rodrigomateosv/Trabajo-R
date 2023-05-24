El conjunto de datos neonatos contiene información de una muestra de 320 recién nacidos en un hospital durante un año. ¿Qué tipo de modelo de regresión explica mejor el peso en función de la puntuación Apgar5 de los recién nacidos con madres fumadoras antes del embarazo?

		
Potencial

		
Cuadrático

		
Logarítmico

		
Lineal

		
Exponencial

# Filtrar los datos para obtener solo los recién nacidos con madres que fumaban antes del embarazo
library(dplyr)
datos <- neonatos %>% filter(tabaco.antes == "Si")

# Ajustar el modelo lineal
modelo_lineal <- lm(peso ~ apgar5, data = datos)
r_cuadrado_lineal <- summary(modelo_lineal)$r.squared

# Ajustar el modelo cuadrático
modelo_cuadratico <- lm(peso ~ apgar5 + I(apgar5^2), data = datos)
r_cuadrado_cuadratico <- summary(modelo_cuadratico)$r.squared

# Ajustar el modelo logarítmico
modelo_logaritmico <- lm(peso ~ log(apgar5), data = datos)
r_cuadrado_logaritmico <- summary(modelo_logaritmico)$r.squared

# Ajustar el modelo exponencial (transformando a lineal)
datos$peso_log <- log(datos$peso)
modelo_exponencial <- lm(peso_log ~ apgar5, data = datos)
r_cuadrado_exponencial <- summary(modelo_exponencial)$r.squared

# Ajustar el modelo potencial (transformando a lineal)
datos$apgar5_log <- log(datos$apgar5)
modelo_potencial <- lm(peso_log ~ apgar5_log, data = datos)
r_cuadrado_potencial <- summary(modelo_potencial)$r.squared

# Verificar cuál modelo tiene el mayor R cuadrado
r_cuadrados <- c(lineal = r_cuadrado_lineal, cuadratico = r_cuadrado_cuadratico, logaritmico = r_cuadrado_logaritmico, exponencial = r_cuadrado_exponencial, potencial = r_cuadrado_potencial)
mejor_modelo <- names(which.max(r_cuadrados))
print(mejor_modelo)
