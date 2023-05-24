

library(tidyverse) 
# Incluye los siguientes paquetes:
# - readr: para la lectura de ficheros csv. 
# - dplyr: para el preprocesamiento y manipulación de datos.
# - tidyr: para la organización de los datos.
# - purrr: para aplicar funciones a vectores. 
library(broom) # para convertir las listas con los resúmenes de los modelos de regresión a formato organizado.
library(knitr) # para el formateo de tablas.
library(kableExtra) # para personalizar el formato de las tablas.
library(ggplot2) # para la visualización de datos.


# Carga de datos
using LaTeXStringssource

df <- data.frame(
    x = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9),
    y = c(2, 5, 8, 11, 14, 17, 20, 23, 26, 29)
)

plot(df$x, df$y, xlab = "X", ylab = "Y", main = "Diagrama de dispersión")

recta_y_x <- lm(y ~ x, df) 
summary(recta_y_x)