#importando o pacote GGPLOT
library(ggplot2)

#lendo a base de dados de automóveis
data(mpg)
names(mpg)

#descrição das variáveis disponíveis
## manufacturer - fabricante do veículo
## qualitativa nominal
mpg$manufacturer
## model - modelo do veículo
## qualitativa nominal
mpg$model
## displ - potência do motor (em litros)
## quantitativa contínua
mpg$displ
## year - ano de fabricação/lançamento
## qualitativa ordinal
mpg$year
## cyl - número de cilindros (pistões)
## quantitativa discreta
mpg$cyl
## trans - tipo de transmissão (câmbio)
## qualitativa nominal
mpg$trans
## drv - tipo de tração (dianteira, traseira, 4x4)
## qualitativa nominal
mpg$drv
## cty - consumo na cidade (milhas por galão)
## quantitativa continua
mpg$cty
## hwy - consumo na estrada (milhas por galão)
## quantitativa contínua
mpg$hwy
## fl - tipo de combustível
## qualitativa nominal
mpg$fl
## class - tipo de veículo
## qualitativa nominal
mpg$class

#primeiro gráfico
attach(mpg)
ggplot(data = mpg, aes(x = hwy, y = cty)) + geom_point(color = cyl)



