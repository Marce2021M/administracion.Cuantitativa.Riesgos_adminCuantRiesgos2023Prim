file_path <- "/Users/marcelinosanchezrodriguez/Documents/Itam/adminDeRiesgos/Clase 10.02.23 Adm Riesgos.xlsx"
sheet_name <- "pruebas"

# Read the entire sheet into a data frame
sheet2 <- read_excel(file_path, sheet = sheet_name)

# Print the table
head(sheet)
summary(sheet)

expecShortFall <- rollapply(data=sheet2$returns, width=window_size, FUN=esFunct, align="right" )

varHistPar <- rollapply(data=sheet2$returns,width= window_size, FUN=varFuncPar, align = "right")

expecShortFallPar <- rollapply(data=sheet2$returns, width=window_size, FUN=esFunctPar, align="right" )

#vol paramétrico

volatAux <- var(sheet2$returns[1:252]) # puede ser una que de el profe
varHistVolPar <- rep(1,length(sheet2$returns)-251 ) # inicializamos vector de var
esHistVolPar <- rep(1,length(sheet2$returns)-251 ) # inicializamos vector de expected shortfall

varHistVolPar[1] <- -sqrt(volatAux)*qnorm(cuantilProb)

esHistVolPar[1] <- sqrt(volatAux)*dnorm(qnorm(cuantilProb))/cuantilProb

for(i in 253:length(sheet2$returns)){
    volatAux=.94*volatAux+.06*sheet2$returns[i]**2
    varHistVolPar[i-251] <- -sqrt(volatAux)*qnorm(cuantilProb)

    esHistVolPar[i-251] <- sqrt(volatAux)*dnorm(qnorm(cuantilProb))/cuantilProb
}
volatAux <- var(sheet2$returns[1:252]) # puede ser una que de el profe
skewAux <- skewness(sheet2$returns[1:252])
kurtAux <- kurtosis(sheet2$returns[1:252])-3


# Example matrices
mat1 <- matrix(c(1, 2, 3, 4), nrow = 2)
mat2 <- matrix(c(5, 6, 7, 8), nrow = 2)

# Multiply matrices using the crossprod() function
result <- crossprod(mat1, mat2)

# Print the result
print(result)

# Example data
vector <- c(2, 3, 4, 5)  # Vector of values
matrix <- matrix(1:12, nrow = 3)  # Matrix with three columns

# Multiply vector[i] with column[i] efficiently
result <- sweep(matrix, 2, vector, "*")

# Print the result
print(result)

future_date <- Sys.Date() + dias30_360[5]
months_diff <- as.numeric(format(future_date, "%Y")) * 12 + as.numeric(format(future_date, "%m")) - 
              (as.numeric(format(Sys.Date(), "%Y")) * 12 + as.numeric(format(Sys.Date(), "%m")))

