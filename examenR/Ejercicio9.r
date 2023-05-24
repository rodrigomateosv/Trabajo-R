#La concentración de nicotina de los cigarros de una marca A sigue una distribución normal de media 13 mg y desviación típica 3 mg, mientras que en otra marca B sigue una distribución normal de media 14 mg y desviación típica 2.5 mg. ¿Cuál de las siguientes afirmaciones es cierta?

		
#A)El porcentaje de cigarros con una concentración de nicotina menor de 12 mg es mayor en la marca A que en la B.

		
#B)El percentil 90 de la concentración de nicotina de la marca A es mayor que el de la marca B.

		
#C)El porcentaje de cigarros con una concentración de nicotina mayor que 17 mg es mayor en la marca A que en la B.

#D)Las otras afirmaciones son falsas.
#F)La mediana de la concentración de nicotina de la marca A es mayor que la de la marca B.

# Parámetros de las distribuciones
media_A <- 13
sd_A <- 3
media_B <- 14
sd_B <- 2.5

# Afirmación 1: Porcentaje de cigarros con nicotina < 12 mg
p_A_menor_12 <- pnorm(12, mean = media_A, sd = sd_A)
p_B_menor_12 <- pnorm(12, mean = media_B, sd = sd_B)

print(p_A_menor_12 > p_B_menor_12) # ¿Es mayor el porcentaje en la marca A que en la B?

# Afirmación 2: Percentil 90
perc_90_A <- qnorm(0.90, mean = media_A, sd = sd_A)
perc_90_B <- qnorm(0.90, mean = media_B, sd = sd_B)

print(perc_90_A > perc_90_B) # ¿Es mayor el percentil 90 en la marca A que en la B?

# Afirmación 3: Porcentaje de cigarros con nicotina > 17 mg
p_A_mayor_17 <- 1 - pnorm(17, mean = media_A, sd = sd_A)
p_B_mayor_17 <- 1 - pnorm(17, mean = media_B, sd = sd_B)

print(p_A_mayor_17 > p_B_mayor_17) # ¿Es mayor el porcentaje en la marca A que en la B?

# Afirmación 4: Las otras afirmaciones son falsas. 
# No necesitamos calcular nada para esta afirmación. Depende de las otras tres.

# Afirmación 5: Mediana
# En una distribución normal, la mediana es igual a la media.
print(media_A > media_B) # ¿Es mayor la mediana (media) en la marca A que en la B?


