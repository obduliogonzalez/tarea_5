# Configura el espejo de CRAN por defecto
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Instala los paquetes necesarios si no están instalados
if (!require("rpart")) install.packages("rpart")
if (!require("rpart.plot")) install.packages("rpart.plot")

# Carga las librerías
library(rpart)
library(rpart.plot)

# Asegúrate de que la ruta al archivo CSV es correcta
#vivienda <- read.csv("C:/Users/nestor.gonzalez/Desktop/MASTER GADEX/MAESTRIA USAC/INTRODUCCION A LA MINERIA DE DATOS/Tarea 5/VIVIENDA_BDP.csv", sep = ',')
vivienda <- read.csv("C:\\Users\\nestor.gonzalez\\Desktop\\MASTER GADEX\\MAESTRIA USAC\\INTRODUCCION A LA MINERIA DE DATOS\\Tarea 5\\VIVIENDA_BDP.csv", sep = ',')

#vivienda <- read.csv("C:\\Users\\nestor.gonzalez\\Desktop\\MASTER GADEX\MAESTRIA USAC\\INTRODUCCION A LA MINERIA DE DATOS\\Tarea 5\\VIVIENDA_BDP.csv", sep=',')


#Construye el modelo de árbol de decisión
arbol <- rpart(AREA ~ PCV1+
                     PCV2+
                     PCV3+ 
                     PCV4+ 
                     PCV5, 
                     data=vivienda, method="class")
              

rpart.plot(arbol, type=2, extra=0, under=TRUE, fallen.leaves=TRUE, box.palette="RdBu", main=" Predicción de Área", cex=0.80)


