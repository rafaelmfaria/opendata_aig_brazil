

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
idade + 2
idade - 2
idade * 2
idade / 2
prod(idade)
idade^2
sqrt(idade)
idade2 <- idade * 2
idade + idade2
sin(idade)
cos(idade)
max(idade)
min(idade)
sort(idade)
sort(idade, decreasing = TRUE)
idade < idade2
min(idade) < min(idade2)
idade == idade2
idade[3]=90
idade2[3]=90
idade[3]==idade2[3]
idade==idade2
union(idade, idade2)
intersect(idade, idade2)
setdiff(idade, idade2)
idade<=idade2
ls()
remove(idade)
ls()

##Sequências

#sequenciais
1:10
seq(1,10)
seq(1,10,2)

#repetições
idades<-c(23,34,28)
rep(idades, 10)
rep(1:3, 2, each=4)
cidades<-c("Salvador", "Recife", "Olinda")
rep(cidades, each=2)
rep(cidades, 2)
rep(cidades, c(3,5,7))

#amostras aleatorias
sample(1:60,6)
sample(1:60,6, replace = TRUE)
sort(sample(1:60,6, replace = FALSE), decreasing = FALSE)
numero <- sample(1:60,6, replace = TRUE)
numero
rank(numero)

#matrizes

##criação de matriz
v1<-c(2,3,4)
v2<-c(3,6,7)
A<-rbind(v1,v2)
B<-cbind(v1,v2)
dim(A)
dim(B)
length(A)

v1<-c('recife', 'olinda', 'salvador')
v2<-c(23,45,56)
rbind(v2,v1)

##comando matrix
matrix(0,2,4)
matrix('exemplo',3,5)
matrix(seq(1:9), nrow = 3, byrow = FALSE)
matrix(seq(1:9), nrow = 3, byrow = TRUE)
matrix(seq(1:9), ncol = 3, byrow = FALSE)
matrix(seq(1:10), nrow = 2, ncol = 5, byrow = FALSE)
matrix(c('a', 'b'), ncol=4, nrow = 3)

##acessando elementos da matriz




