#GRAPHS#

##################################
#carregamento de bibliotecas uteis
##################################
library(readr)
library(tools) #capitalize texto

##################################
#definindo diretorio de analise
##################################
getwd()
directory <- "/home/cleibson/projetos/opendata_aig_brazil/script"
setwd(directory)

##################################
#lendo os dados
##################################
oco <- read_delim("../data/all.csv", "~", escape_double = FALSE, trim_ws = TRUE)
attach(oco)

##################################
#Configuracoes gerais
##################################
paleta_cores=c("rosybrown3","gray69","palegoldenrod","paleturquoise3","palegreen2")

dia_compilacao = paste("Dados compilados em ", format(dia_extracao[1], format="%d/%m/%Y"))

graficolargura=800
graficoaltura=450

graficolargura1=600
graficoaltura1=350

graficolargura2=700
graficoaltura2=400

##################################
#Classificação da Ocorrência
##################################
nomearquivo=paste("images/classificacao","001",".jpg",sep="_")
bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
barplot(table(ocorrencia_classificacao),
        main = paste("Total de Ocorrências entre ",
                     substring(min(ocorrencia_dia), 1, 4), 
                     "-", 
                     substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
        col = rainbow(length(table(ocorrencia_classificacao))), #cores das barras
        ylab = "Total de Ocorrências", #label do eixo y
        cex.names = 0.8, #tamanho do texto dos eixos
        axis.lty=1, #define padrão de linha do eixo x
        las=1, #rotaciona labels eixo x
        width=0.3,
        space=0.5
)
mtext(dia_compilacao, side=1, line=4, cex=1)
dev.off()

##################################
#Ocorrências por mês
##################################
ocorrencia_mes = substring(ocorrencia_dia, 6, 7)
ocorrencia_ano = substring(ocorrencia_dia, 1, 4)
temp_class = unique(ocorrencia_classificacao)
temp_ano = unique(ocorrencia_ano)
table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE'))
table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE' & ocorrencia_ano == '2006'))
sum(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE' & ocorrencia_ano == '2006')))

for(i in temp_class){
  nomearquivo = paste("images/por_mes_", tolower(i),".jpg", sep="")
  bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
  indice_cor = which(temp_class==i)  #captura o indice da palavra i
  barplot(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)),
          main = paste("Total de ", toTitleCase(tolower(i)), "s", " por Mês entre ",
                       substring(min(ocorrencia_dia), 1, 4), 
                       "-", 
                       substring(max(ocorrencia_dia), 1, 4), sep=""), #título do gráfico
          col = rep(rainbow(indice_cor)[indice_cor], length(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)))), #cores das barras
          ylab = paste("Total de ", toTitleCase(tolower(i)), "s", sep=""), #label do eixo y
          xlab = "Mês", #label do eixo x
          cex.names = 0.8, #tamanho do texto dos eixos
          axis.lty=1, #define padrão de linha do eixo x
          las=1, #rotaciona labels eixo x
          width=0.3, #largura das barras
          space=0.5 #espaço entre as barras
  )
  mtext(dia_compilacao, side=1, line=4, cex=1)
  dev.off()
  for(j in temp_ano){
    nomearquivo = paste("images/por_mes_", tolower(i), "_ano_", j, ".jpg", sep="")
    bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
    barplot(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i & ocorrencia_ano == j)),
            main = paste("Total de ", toTitleCase(tolower(i)), "s", " por Mês no Ano de ", j, sep=""), #título do gráfico
            col = rep(rainbow(indice_cor)[indice_cor], length(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)))), #cores das barras
            ylab = paste("Total de ", toTitleCase(tolower(i)), "s", sep=""), #label do eixo y
            xlab = "Mês", #label do eixo x
            cex.names = 0.8, #tamanho do texto dos eixos
            axis.lty=1, #define padrão de linha do eixo x
            las=1, #rotaciona labels eixo x
            width=0.3, #largura das barras
            space=0.5 #espaço entre as barras
    )
    mtext(dia_compilacao, side=1, line=4, cex=1)
    dev.off() 
  }
  }


##################################
#Ocorrências por Tipo de Aeronave
##################################
nomearquivo=paste("images/aeronave_tipo","001",".jpg",sep="_")
bmp(nomearquivo,width=graficolargura2, height=graficoaltura2)
barplot(sort(table(aeronave_equipamento), decreasing = TRUE),
        main = paste("Total de Ocorrências por Tipo de Aeronave entre ",
                     substring(min(ocorrencia_dia), 1, 4), 
                     "-", 
                     substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
        col = rainbow(length(table(aeronave_equipamento))), #cores das barras
        ylab = "Total de Ocorrências", #label do eixo y
        xlab = "Tipo de Aeronave", #label do eixo x
        cex.names = 0.7, #tamanho do texto dos eixos
        axis.lty=1, #define padrão de linha do eixo x
        las=1, #rotaciona labels eixo x
        width=0.3,
        space=0.5
)
mtext(dia_compilacao, side=1, line=4, cex=1)
dev.off()

##################################
#Ocorrências por Tipo de Motor da Aeronave
##################################
nomearquivo=paste("images/aeronave_tipo_motor","001",".jpg",sep="_")
bmp(nomearquivo,width=graficolargura2, height=graficoaltura2)
barplot(sort(table(aeronave_tipo_motor), decreasing = TRUE),
        main = paste("Total de Ocorrências por Tipo de Motor da Aeronave entre ",
                     substring(min(ocorrencia_dia), 1, 4), 
                     "-", 
                     substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
        col = rainbow(length(table(aeronave_equipamento))), #cores das barras
        ylab = "Total de Ocorrências", #label do eixo y
        xlab = "Tipo de Motor da Aeronave", #label do eixo x
        cex.names = 0.7, #tamanho do texto dos eixos
        axis.lty=1, #define padrão de linha do eixo x
        las=1, #rotaciona labels eixo x
        width=0.3,
        space=0.5
)
mtext(dia_compilacao, side=1, line=4, cex=1)
dev.off()

##################################
#Ocorrências por Quantidade de Motores da Aeronave
##################################
nomearquivo=paste("images/aeronave_quantidade_motor","001",".jpg",sep="_")
bmp(nomearquivo,width=graficolargura2, height=graficoaltura2)
barplot(sort(table(aeronave_quantidade_motores), decreasing = TRUE),
        main = paste("Total de Ocorrências por Quantidade de Motores da Aeronave entre ",
                     substring(min(ocorrencia_dia), 1, 4), 
                     "-", 
                     substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
        col = rainbow(length(table(aeronave_equipamento))), #cores das barras
        ylab = "Total de Ocorrências", #label do eixo y
        xlab = "Quantidade de Motores da Aeronave", #label do eixo x
        cex.names = 0.7, #tamanho do texto dos eixos
        axis.lty=1, #define padrão de linha do eixo x
        las=1, #rotaciona labels eixo x
        width=0.3,
        space=0.5
)
mtext(dia_compilacao, side=1, line=4, cex=1)
dev.off()

