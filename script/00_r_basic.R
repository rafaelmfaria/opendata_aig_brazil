

#Vetores

##atribuindo valores
idade <- c(23,34,56,45,34,23,23,34)
##atribuindo valores com scan
peso <- scan()
##tamanho do vetor
length(idade)
##atribuindo string no vetor
nomes <- c("Jorge", "Pedro", "Marcos")
length(nomes)

#assessando vetores
idade[3] #acessa o terceiro elemento
idades[1:5] #acessa do primeiro até o quinto
idade[c(2,4,7)] #acessa o quarto, segundo e sétimo

#modificando vetores
idade[3] <- 67 #modifica o terceiro elemento
idade[3:5] <- c(23,45,89) #modifica do terceiro ao quinto elemento

#ecluindo vetores
idade[-2] #remove o segundo elemento

#adicionando vetores
length(idade)
idade[9] <- 56 #adiciona um novo valor no indice 9 do vetor
length(idade)

#operacoes com vetor





