# Generar 10 muestras aleatorias de una distribución y calcular la suma de sus cuadrados. 
#Dibujar el diagrama de barras de la distribución de frecuencias de la muestra obtenida sumando
# los cuadrados. Compararla con la función de probabilidad de una distribución Chi-cuadrado 
#con 10 grados de libertad.

# Cargar las librerías
library(ggplot2)
# Configurar el número de muestras y de repeticiones
n_samples <- 10
n_reps <- 10000

# Generar las sumas de cuadrados
set.seed(42) # Para la reproducibilidad
sum_squares <- replicate(n_reps, sum(rnorm(n_samples)^2))

# Crear el histograma
hist_data <- data.frame(sum_squares)
colnames(hist_data) <- c("Sum_of_Squares")
ggplot(hist_data, aes(x = Sum_of_Squares)) + geom_histogram(aes(y = ..density..), bins = 30, colour = "black", fill = "white") +
  stat_function(fun = dchisq, args = list(df = n_samples), colour = "red", size = 1) +
  labs(title = "Histogram of Sum of Squares vs. Chi-Squared Distribution", x = "Sum of Squares", y = "Density") +
  theme_minimal()
