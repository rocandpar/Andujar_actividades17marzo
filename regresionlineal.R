#8
datos <- data.frame(distancia = c(1.1,100.2,90.3,5.4,57.5,6.6,34.7,65.8,57.9,86.1),
                    cuentas = c(110,2,6,98,40,94,31,5,8,10))
modelo <- lm(cuentas ~ distancia, data = datos) 
summary(modelo)
plot(datos$distancia, datos$cuentas, main = "Recta de Regresión", xlab = "Distancia", ylab = "Cuentas")
abline(modelo, col = "green")

#13
datos13 <- data.frame(cuentas = 6,98,40,94,31,5,8,10,
                      predicciones = -6.68,85.52,28.93,84.21,53.69,19.92,28.50,-2.12)
modelo13 <- lm(cuentas ~ predicciones, data = datos13)
datos13$predicciones <- predict(modelo13)
datos13$residuos <- datos13$cuentas - datos13$predicciones
print(datos$residuos)