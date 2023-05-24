#La siguiente tabla contiene el contenido de cadmio de de 15 muestras de aceite analizadas con dos métodos A y B.

#Method A	12	13	8	3	14	12	15	17
#Method B	4	12	25	19	28	31	17	 


#¿Cuál de las siguientes afirmaciones es cierta?

		
#A)Las otras afirmaciones son falsas.

#B)La media del método A es más representativa que la del método B.

#C)El método A tiene mucha más dispersión relativa con respecto a la media que el método B.

		
#D)La media del método B es más respresentativa que la media del método A.

#F)Ambos métodos tienen aproximadamente la misma dispersión relativa con respecto a la media.

# Datos
# Datos
method_A <- c(12, 13, 8, 3, 14, 12, 15, 17)
method_B <- c(4, 12, 25, 19, 28, 31, 17)

# Cálculo de la media
mean_A <- mean(method_A)
mean_B <- mean(method_B)

# Cálculo de la desviación estándar
sd_A <- sd(method_A)
sd_B <- sd(method_B)

# Cálculo del coeficiente de variación (CV)
cv_A <- sd_A / mean_A * 100
cv_B <- sd_B / mean_B * 100

# Crear un vector vacío para almacenar los resultados
result <- c()

# Verificación de las afirmaciones:
# B) La media del método A es más representativa que la del método B.
result["B"] <- sd_A < sd_B

# C) El método A tiene mucha más dispersión relativa con respecto a la media que el método B.
result["C"] <- cv_A > cv_B

# D) La media del método B es más respresentativa que la media del método A.
result["D"] <- sd_B < sd_A

# F) Ambos métodos tienen aproximadamente la misma dispersión relativa con respecto a la media.
result["F"] <- abs(cv_A - cv_B) <= 0.01 * ((cv_A + cv_B) / 2)

# A) Las otras afirmaciones son falsas.
result["A"] <- all(!result[c("B", "C", "D", "F")])

# Imprimir resultados
for (statement in names(result)) {
  print(paste(statement, ifelse(result[statement], "Verdadero", "Falso")))
}

# Afirmación correcta: B
