#Ej 9

# porcentaje de chips defectuosos
p_defectuoso <- 0.02 / 100 

# chips producidos por hora
chips_por_hora <- 120

# chips defectuosos esperados por hora
lambda_por_hora <- p_defectuoso * chips_por_hora
lambda_por_hora

# En 5 minutos se produce 1/12 de la producción horaria
lambda_5min <- lambda_por_hora / 12

# En 10 minutos se produce 1/6 de la producción horaria
lambda_10min <- lambda_por_hora / 6

# Calcular la probabilidad de que la máquina produzca algún chip defectuoso en 5 minutos
p_defectuoso_5min <- 1 - dpois(0, lambda_5min)
p_defectuoso

# Calcular la probabilidad de que produzca más de 1 chip defectuoso en 10 minutos
p_mas_de_1_defectuoso_10min <- 1 - ppois(1, lambda_10min)
p_mas_de_1_defectuoso_10min

# Calcular la probabilidad de que produzca entre 1 y 3 chips defectuosos (ambos incluidos) en 10 minutos
p_entre_1_y_3_defectuosos_10min <- ppois(3, lambda_10min) - ppois(0, lambda_10min)
p_entre_1_y_3_defectuosos_10min

# Imprimir resultados
print(paste("Probabilidad de algún chip defectuoso en 5 minutos:", p_defectuoso_5min))
print(paste("Probabilidad de más de 1 chip defectuoso en 10 minutos:", p_mas_de_1_defectuoso_10min))
print(paste("Probabilidad de entre 1 y 3 chips defectuosos en 10 minutos:", p_entre_1_y_3_defectuosos_10min))