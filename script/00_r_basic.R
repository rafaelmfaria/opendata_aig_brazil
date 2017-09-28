#http://venus.ifca.unican.es/Rintro/dataStruct.html
#https://www.stat.auckland.ac.nz/~paul/ItDT/HTML/node64.html


#Vectors: one-dimensional arrays used to store collection data of the same mode
##Numeric Vectors (mode: numeric)
##Complex Vectors (mode: complex)
##Logical Vectors (model: logical)
##Character Vector or text strings (mode: character)
#Matrices: two-dimensional arrays to store collections of data of the same mode. They are accessed by two integer indices.
#Arrays: similar to matrices but they can be multi-dimensional (more than two dimensions)
#Factors: vectors of categorical variables designed to group the components of another vector with the same size
#Lists: ordered collection of objects, where the elements can be of different types
#Data Frames: generalization of matrices where different columns can store different mode data.
#Functions: objects created by the user and reused to make specific operations.

#ver imagem em: /images/structure_data_in_r.png

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
A<-matrix(1:20,5,6)
A
A[2,1]
A[3,]
A[,4]
A[1:3,2:5]
A[c(1,3,4), c(3,4)]
A[c(2,3),]
nrow(A)
ncol(A)

##modificar elemntos da matriz
A<-matrix(1:20, 4, 5)
A[3,5]
A[3,5] <- 90
A[,3]
A[,3] <-0
A[2,]
A[2,]<-100
A
v<-c(1:4)
A2<-cbind(A,v)
A2
ncol(A2)
x<-c(1:6)
A3<-rbind(A2,x)
A3

##removendo elementos
A2
A2[,-2] #remove segunda coluna
A2[-1,] #remove primeira linha
A2[-1, -2] #remove primeira linha e segunda coluna

##operações
A<-matrix(10,5,5)
A
A+4
A-4
A*3
A*(-3)
A/5
A/8
A^2
sqrt(A)
log(A)
B<-matrix(2,5,5)
B
A+B
A-B
A*B #não é a multiplicação de matrizes(multiplica elementos)
A%*%B #multiplicação de matrizes (produto matricial)

##curiosidades
A<-matrix(1:25, 5, 5)
A
diag(A)
det(A)
dim(A)
B<-A[,-3]
B
t(B)
A
image(A)
image(B)
A[,1]<-1000
image(A)
A
A[3,]<-300
image(A)
contour(A)
contour(B)
A
persp(A)
persp(B)

#Labels de matrizes
A<-matrix(0,3,3)
A
colunas<-c('idade', 'sexo', 'peso')
linhas<-c('marlos', 'josé', 'pedro')
A<-matrix(0,3,3, dimnames = list(linhas, colunas))
A
dimnames(A)

#exemplo - 9.4.1 Case study: Counting candy 
# https://www.stat.auckland.ac.nz/~paul/ItDT/HTML/node64.html
shape<-rep(c('round', 'oval', 'long'), 4)
pattern <- rep(c('pattern', 'plain'), 2, each=3)
shade<-rep(c('light','dark'),1,each=6)
count<-c(2,0,3,1,3,2,9,0,2,1,11,2)
table_91<-data.frame(shape,pattern,shade,count)

#Arrays

##Coleção de matrizes com mesma dimensão M1,M2,M3,M4 --> Array

##criação de arrays
A<-matrix(1:20, 4, 5)
B<-array(11:30, dim = c(4,5))
A
B
C<-array(1:20, dim = c(4,5,4))
C

D<-array(c(A,B), dim = c(4,5,2))
D

E<-array(c("Recife", "Olinda", "Jaboatão"), dim = c(3,4,3))
E

##usando vetores
vetor1<-c(20,34,56)
vetor2<-c('André', 'Felipe', 'Maria', 'José')
F<-array(c(vetor1, vetor2), c(3,4,2))
F

v1<-c(40,300,150)
v2<-scan(n = 5)
v3<-c('maria','josé')
G<-array(c(v1,v2,v3), dim = c(3,3,3) )
G

#nomeando arrays
r.names<-c('marcos', 'joão', 'maria')
c.names<-c('gastos', 'lucros', 'despesas')
matrizes.names<-c('Janeiro', 'Fevereiro', 'Março')
H<-array(c(v1,v2,v3), dim = c(3,3,3), dimnames = list(r.names,c.names,matrizes.names))
H
dim(H)
length(H)

#acessando arrays A[x,y,z]
H
despesas_joao_fev <- H[2,3,2] #acessa elemento da linha 2, coluna 3, da matriz 2
despesas_joao_fev
despesas_joao <-H[2,3,]
despesas_joao
lucros_jan <- H[,2,]
lucros_jan

#modificando arrays
H
H[,1,] <- 10
H
H[,3,1] <- seq(1,3)
H
H[3,,2] <- c(230,430,330)
H
H[,,1] <- matrix(1:9, ncol = 3)
H
H[,,2:3] <- matrix(10:18, nrow=3)
H

#operações com arrays
H <- array(seq(1:9), dim = c(3,3,3), dimnames = list(r.names,c.names,matrizes.names))
H[,3,1] <- c(4,7,8)
H[,2,1] <- c(6,7,1)
H[,3,2] <- c(4,9,8)
H
mean(H[1,,])
sum(H[,3,3])
apply(H, c(1), sum) #por linha
apply(H, c(2), sum) #por coluna
apply(H, c(1), mean)
apply(H[,2,], c(2), sum)
mean(H[,2,])
apply(H, c(2), sum)
apply(H[1,,], c(2), sum) #soma de todos os gastos de marcos por mes
apply(H[1,,], c(1), sum) #soma de todos os gastos de marcos por tipo

#Fatores
##variaveis categoricas

est_civil <- c('casado', 'casado', 'solteiro', 'casado', 'solteiro', 'outro')
a <- factor(est_civil)
a
a <- factor(est_civil, levels = c('solteiro', 'casado', 'outro'))
a
est_civil <- gl(4, 2, labels = c('solteiro', 'casado', 'divorciado', 'outro'))
est_civil


#Listas
##Guarda uma coleção de objetos diferentes
##criação de listas
fct <- factor(c('JAN', 'FEV', 'MAR'))
l1 <- list(4, c('a', 'b', 'c'), matrix(1:9, ncol = 3), fct)
l1
l.names <- c('num', 'let', 'matr', 'fact')
c.names <- c('valor1', 'valor2')
m.names <- c('dim1', 'dim2', 'dim3')
arr <- array(1:20, dim = c(4,2,3), dimnames = list(l.names, c.names, m.names))
arr
l2 <- list(arr, fct)
l2
names(l2) <- c('matrizes', 'fatores')
l2
l2$matrizes
l2$fatores

##Acessando listas
l2[1]
l2$matrizes
l2[2]
l2$fatores
l2[3] #nao existe
l2$fatores[2] #FEV

## Modificando listas
l2$fatores
l2$fatores[1]
l2$fatores <- factor(c('a','b','c'))
l2
l2$matrizes[1,2,2] <- 239 
l2$matrizes

## adicionar e remover elementos
l2
names(l2)
l2[1]
l2[2]
l2[3] <- c('mensagem de atenção') #adiciona
l2
l2[3]
names(l2)[3] <- 'aviso'
l2$aviso
l2

l2[3] <- NULL #remove
l2

#combinando listas
l1
names(l1) <- c('A', 'B', 'C', 'D')
names(l1)
names(l2)
l3 <- c(l1, l2) #junta
names(l3)

#Data Frames
nome<-c('joao','maria','marcos')
idade<-c(23,23,45)
genero<-c('m','f','m')
dados<-data.frame(nome, idade, genero)
str(dados)
dados
dim(dados)
length(dados)
ncol(dados)
nrow(dados)
names(dados)
summary(dados)

#acessando data frames
dados
dados[1,]
dados[1:2,]
dados[c(1,3),]
dados[,2] #idade
dados[,2:3]
dados[2,2]
dados[1:2,2:3]
dados$idade
attach(dados)
names(dados)
dados$genero

#modificando data frames
dados
dados$idade
dados$idade<-c(23,45,63)
dados$idade[2]
dados$idade[2]<-90
dados$nome[1]<-c("pedro")
dados$nome<-c('marcos', 'maria','gaspar')
dados$nome[2]
dados$nome[2]<-c("amanda")
dados

#adicionar e remover variaveis e casos
dados
dados$cidade<-c('são paulo', 'macapá', 'rio de janeiro') #add coluna
dados

dados<-dados[,-4] #remove quarta coluna
dados

#removendo e adicionando registros
dados<-dados[-2,] #remove segunda linha
dados
str(dados)
dados[2,]<-c('paula', 29, 'f')
dados[3,]<-c('andré', 34, 'm')
dados[4,]<-c('murilo', 45, 'm')
dados
dados$idade <- as.numeric(dados$idade)
dados
str(dados)


