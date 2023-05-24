#Crear un data frame con los datos del PIB y los años a partir del fichero pib-usa.csv.
Datos <- read_csv("C:\\Users\\rodri\\OneDrive\\Documentos\\GitHub\\Trabajo-R\\ejercicio6\\pib-usa.csv")
Datos
#Dibujar el diagrama de dispersión correspondiente. ¿Qué tipo de modelo de regresión se ajusta mejor a la nube de puntos?
library(ggplot2)
ggplot(Datos, aes(x = Año, y = PIB)) +
    geom_point(col = "red") +
    geom_smooth(method = "lm") +
    ggtitle("PIB de USA") +
    xlab("Año") +
    
    
#Calcular el modelo de regresión exponencial del PIB sobre los años.
recta_pib_año <- lm(log(PIB) ~ Año, Datos)
summary(recta_pib_año)
#¿Cuál es la tasa de crecimiento porcentual anual del PIB?
recta_pib_año$coefficients[2]
#¿Cuándo se alcanzará un PIB de 50000 billones de dólares?
log_años_PIB <- lm(Año ~ log(PIB), Datos) 
summary(log_años_PIB)
predict.lm(log_años_PIB, newdata = list(PIB = 50000))
