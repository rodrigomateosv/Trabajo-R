# Definir el promedio diario
lambda <- 15

# Calcular la probabilidad de que no se venda ningún libro
p_no_sales <- dpois(0, lambda)
print(p_no_sales)
# Calcular la probabilidad de que se vendan entre 10 y 20 libros
p_10_to_20 <- sum(dpois(10:20, lambda))
print(p_10_to_20)
#Si en el almacén que hace los envíos se dispone de un stock de 125 libros, 
#¿cuál es la probabilidad de que no puedan satisfacer todos los pedidos en una semana?

# Ajustar lambda para una semana
lambda_weekly <- lambda * 7

# Calcular la probabilidad de vender 125 libros o menos
p_125_or_less <- ppois(125, lambda_weekly)

# Calcular la probabilidad de vender más de 125 libros
p_more_than_125 <- 1 - p_125_or_less
print(p_more_than_125)

