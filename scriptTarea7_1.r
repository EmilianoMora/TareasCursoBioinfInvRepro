# TareasCursoBioinfInvRepro
#este es un script para hacer la pregunta 1 de la Tarea 7.1 del curso de Bioinformatica ...


#Primero vamos a establecer el directorio de trabajo 
setwd ("~/BioinfinvRepro/Unidad7/Prac_Uni7/maices/meta")

#1) cargamos la base de datos ""maizteocintle_SNP50k_meta_extended.txt" y lo dirigimos a un archivo que se llama "fullmat"

fullmat <- read.delim("maizteocintle_SNP50k_meta_extended.txt", header = TRUE)

#2) determinamos que la base de datos es un data frame

class(fullmat)

#3) vemos cuales son las primeras 6 lineas de nuetra base de datos

head (fullmat, n=6)

#4) determinamos el numero de muestras que existen en nuetra base de datos es 165 
n.row(fullmat)

#5) determinamos que se tienen observaciones de 19 estados

str(fullmat)

#6) determinamos que el numero de muestras colectadas antes de 1980 es  

length(which(fullmat$A.o._de_colecta < 1980))

#7) para determinar la cantidad de muetsars de cada una de las razas usamos la funcion "summary"

summary(fullmat$Raza)

#8) determinamos que en promedio las muestars fueron colectadas a metros sobre el nivel del mar

mean (fullmat$Altitud)

#9) determinamos que la altura maxima y minima de colecta fueron 

max(fullmat$Altitud)
min(fullmat$Altitud)

#10) se crea una nueva base de datos solo con las muestras de la raza OLotillo 
Olotillo <- dplyr::filter(fullmat, Raza =="Olotillo")

#11) se crea una nueva base de datos solo con las muestars de las razas Reventador, Jala y Ancho 

masRazas <- dplyr::filter(fullmat, Raza == c("Reventador","Jala","Ancho"))

#12) se crea un archivo con extension ".csv" llamado "submat.csv"

write.csv(masRazas, file="~/Desktop/BioinfinvRepro/Unidad7/Prac_Uni7/maices/meta/submat.csv")


