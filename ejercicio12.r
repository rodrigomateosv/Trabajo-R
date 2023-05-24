#ej12
library(ggplot2)

# grados de libertad de la distribución T
df <- 12

# generar una secuencia de números
x <- seq(-5, 5, by = 0.1)

# calcular las densidades y las distribuciones acumuladas
densidades <- dt(x, df)
distribuciones <- pt(x, df)

# crear un data frame con los datos
datos <- data.frame(x, densidades, distribuciones)

# dibujar la gráfica de la función de densidad
ggplot(datos, aes(x, densidades)) +
  geom_line(color = "blue") +
  ggtitle("Función de densidad T de Student T(12)") +
  xlab("x") +
  ylab("Densidad")

# dibujar la gráfica de la función de distribución
ggplot(datos, aes(x, distribuciones)) +
  geom_line(color = "blue") +
  ggtitle("Función de distribución T de Student T(12)") +
  xlab("x") +
  ylab("Distribución acumulada")