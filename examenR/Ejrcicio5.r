#La siguiente tabla recoge los intereses de un préstamo transcurridos un número determinado de meses desde su contratación.

#Meses	10	15	20	25	30	35	40
#Interés porcentual	15.2	14.3	12.8	10.9	9.2	8.6	7.9

#cargamos la tabla
months <- c(10, 15, 20, 25, 30, 35, 40)
interest <- c(15.2, 14.3, 12.8, 10.9, 9.2, 8.6, 7.9)


#Según la recta de regresión, ¿cuál de las siguientes afirmaciones es cierta

		
#A)Las otras afirmaciones son falsas.

		
#B)El interés crece aproximadamente 17.8607 puntos porcentuales por cada mes que pasa.

		
#C)El interés crece aproximadamente 0.2636 puntos porcentuales por cada mes que pasa.

		
#D)Los meses crecen 3.6993 por cada punto porcentual de interés.

		
#F)Los meses decrecen 66.6964 por cada punto porcentual de interés.

# Crear un vector vacío para almacenar los resultados
# Almacenar los coeficientes en variables para una fácil referencia
intercept <- summary(model)$coefficients[1,1]
slope <- summary(model)$coefficients[2,1]

# B) El interés crece aproximadamente 17.8607 puntos porcentuales por cada mes que pasa.
check_B <- slope == 17.8607

# C) El interés crece aproximadamente 0.2636 puntos porcentuales por cada mes que pasa.
check_C <- slope == 0.2636

# D y F) Los meses crecen o decrecen por cada punto porcentual de interés.
# Para esto, necesitamos encontrar la pendiente de la regresión de months sobre interest
inverse_model <- lm(months ~ interest, data = data)
inverse_slope <- summary(inverse_model)$coefficients[2,1]

# D) Los meses crecen 3.6993 por cada punto porcentual de interés.
check_D <- inverse_slope == 3.6993

# F) Los meses decrecen 66.6964 por cada punto porcentual de interés.
check_F <- inverse_slope == -66.6964

# A) Las otras afirmaciones son falsas.
check_A <- !(check_B | check_C | check_D | check_F)

# Imprimir resultados
cat("B) ", check_B, "\n")
cat("C) ", check_C, "\n")
cat("D) ", check_D, "\n")
cat("F) ", check_F, "\n")
cat("A) ", check_A, "\n")

# E) ¿Cuál de las siguientes afirmaciones es ciert


