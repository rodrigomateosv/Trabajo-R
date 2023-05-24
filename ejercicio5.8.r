#El conjunto de datos gapminder del paquete gapminder contiene infomración sobre la esperanza de vida, la población, 
#y el PIB per cápita en dólares PPP de los principales países en un rango de años.

#Instalar el paquete gapminder y cargarlo.
install.packages("gapminder")
library(gapminder)
#¿Qué tipo de modelo explica mejor la evolución de la población con los años? Construir ese modelo.
library(ggplot2)
ggplot(gapminder, aes(x = year, y = pop)) +
    geom_point(col = "red") +
    geom_smooth(method = "lm") +
    ggtitle("Población") +
    xlab("Año") +
    ylab("Población") +
    theme(plot.title = element_text(hjust = 0.5))
#¿Qué tipo de modelo explica mejor la evolución del PIB per cápita con los años? Construir ese modelo.
ggplot(gapminder, aes(x = year, y = gdpPercap)) +
    geom_point(col = "red") +
    geom_smooth(method = "lm") +
    ggtitle("PIB per cápita") +
    xlab("Año") +
    ylab("PIB per cápita") +
    theme(plot.title = element_text(hjust = 0.5))



