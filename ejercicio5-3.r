#Después de tomar un litro de vino se ha medido la concentración 
#de alcohol en la sangre en distintos instantes, obteniendo los siguientes datos

df <- data.frame(
    Tiempo = c(30, 60, 90, 120, 150, 180, 210),
    Alcohol = c(1.6, 1.7, 1.5, 1.1, 0.7, 0.2, 2.1)
)
df
#Calcular el coeficiente de correlación lineal. 
#¿Existe relación lineal entre la concentración de alcohol y el tiempo que pasa?
cor(df$Tiempo, df$Alcohol)

#Dibujar el diagrama de dispersión correspondiente y la recta de regresión de la concentración de alcohol sobre el tiempo. 
#¿Por qué el ajuste es tan malo?
library(ggplot2)
ggplot(df, aes(x = Tiempo, y = Alcohol)) +
    geom_point(col = "red") +
    geom_smooth(method = "lm") +
    
#Eliminar el dato atípico y calcular la recta de la concentración de alcohol sobre el tiempo. 
#¿Ha mejorado el modelo?
df <- df[-c(7), ]
recta_alcohol_tiempo <- lm(Alcohol ~ Tiempo, df) 
summary(recta_alcohol_tiempo)
#Según el modelo de regresión lineal, ¿a qué velocidad metaboliza esta persona el alcohol?
recta_alcohol_tiempo$coefficients[2]
#Si la concentración máxima de alcohol en la sangre que permite la ley para poder conducir es 0.3
# g/l, ¿cuánto tiempo habrá que esperar después de tomarse un litro de vino para poder conducir sin infringir la ley? ¿Es fiable esta predicción?
(0.3 - recta_alcohol_tiempo$coefficients[1]) / recta_alcohol_tiempo$coefficients[2]