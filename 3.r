install.packages("ggplot2")
install.packages("readr")

library(ggplot2)
library(readr)

datos <- read_csv("C:\\Users\\rodri\\OneDrive\\Documentos\\GitHub\\Trabajo-R\\horas-estudio.csv")
# separador por coma
datos
#Dibujar el diagrama de dispersión correspondiente. 
#¿Qué tipo de modelo de regresión se ajusta mejor a la nube de puntos?
library(ggplot2)
ggplot(df, aes(x = Horas, y = Suspensos)) +
    geom_point(col = "red") +

#Calcular la recta de regresión de los suspensos sobre las horas de estudio.
recta_suspensos_horas <- lm(Suspensos ~ Horas, df) 
summary(recta_suspensos_horas)
recta_suspensos_horas
#Calcular el coeficiente de determinación del modelo lineal e interpretarlo.
cat(paste("Coeficiente de determinación lineal R²:", summary(recta_suspensos_horas)$r.squared))


    
    






