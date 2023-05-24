# Probabilidad de aprobar
p <- 0.6

# Tamaño de la muestra
n <- 100

# Probabilidad de que aprueben 60 o menos
p_menos_60 <- pbinom(59, size = n, prob = p)

# Probabilidad de que aprueben 80 o menos
p_menos_80 <- pbinom(80, size = n, prob = p)

# Probabilidad de que aprueben entre 60 y 80 (ambos inclusive)
p_60_a_80 <- p_menos_80 - p_menos_60

# Imprimir el resultado
print(p_60_a_80)
