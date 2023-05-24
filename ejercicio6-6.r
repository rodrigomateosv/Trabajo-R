#Se sabe que el nivel de colesterol en hombres de una determinada población sigue una distribución Normal 
#en N(220,20) mg/dl.
#Dibujar la función de densidad de este modelo.
#Dibujar la gráfica de la función de distribución del modelo de probabilidad anterior.
#Calcular la probabilidad de tener un nivel de colesterol por debajo de 220 mg/dl.
#Calcular la probabilidad de tener un nivel de colesterol por encima de 260 mg/dl.
#¿Qué porcentaje de la población presentará un nivel de colesterol entre 
#la media poblacional- desviacion tipica y media poblacional+ deviacion tipica ?

#¿Qué porcentaje de la población presentará un nivel de colesterol entre media poblacional- 2*desviacion tipica
# y media poblacional+ 2*desviacion tipica?

#¿Qué porcentaje de la población presentará un nivel de colesterol entre media poblacional- 3*desviacion tipica
#    y media poblacional+ 3*desviacion tipica?
 
#Calcular el rango intercuartílico de la distribución.

# Definir el promedio y la desviación estándar
mean <- 220
sd <- 20

# Generar datos
x <- seq(mean - 4*sd, mean + 4*sd, length = 100)
y <- dnorm(x, mean = mean, sd = sd)

# Dibujar la función de densidad
df <- data.frame(x = x, y = y)
ggplot(df, aes(x, y)) +
  geom_line(color = "blue") +
  ggtitle("Función de densidad N(220, 20)") +
  xlab("x") +
  ylab("Densidad")
# Generar datos
y <- pnorm(x, mean = mean, sd = sd)

# Dibujar la función de distribución
df <- data.frame(x = x, y = y)
ggplot(df, aes(x = x, y = y)) +
  geom_line() +
  labs(x = "Nivel de Colesterol", y = "Probabilidad Acumulada", title = "Función de Distribución de Probabilidad")
# Calcular la probabilidad de tener un nivel de colesterol por debajo de 220 mg/dl.
p_below_220 <- pnorm(220, mean = mean, sd = sd)
print(p_below_220)
# Calcular la probabilidad de tener un nivel de colesterol por encima de 260 mg/dl.
p_above_260 <- 1 - pnorm(260, mean = mean, sd = sd)
print(p_above_260)
# ¿Qué porcentaje de la población presentará un nivel de colesterol entre la media poblacional- desviacion tipica y media poblacional+ deviacion tipica ?
# Dentro de 1 desviación estándar
p_1sd <- pnorm(mean + sd, mean = mean, sd = sd) - pnorm(mean - sd, mean = mean, sd = sd)
print(p_1sd)

# Dentro de 2 desviaciones estándar
p_2sd <- pnorm(mean + 2*sd, mean = mean, sd = sd) - pnorm(mean - 2*sd, mean = mean, sd = sd)
print(p_2sd)

# Dentro de 3 desviaciones estándar
p_3sd <- pnorm(mean + 3*sd, mean = mean, sd = sd) - pnorm(mean - 3*sd, mean = mean, sd = sd)
print(p_3sd)
# Calcular el rango intercuartílico de la distribución.
# Calcular el primer y tercer cuartil
q1 <- qnorm(0.25, mean = mean, sd = sd)
q3 <- qnorm(0.75, mean = mean, sd = sd)

# Calcular el rango intercuartilico
iqr <- q3 - q1
print(iqr)





