#importando o pacote GGPLOT
library(ggplot2)

#lendo a base de dados de automóveis
?mpg
data(mpg)
head(mpg)
names(mpg)
str(mpg)
summary(mpg)

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

#resumo das variáveis
## qualitativa nominal - manufacturer, model, trans, drv, hwy, fl
## qualitativa ordinal - year
## quantitativa discreta - cyl
## quantitativa contínua - displ, cty, hwy,

#exibe total de registros e variáveis
dim(mpg)

#primeiro gráfico | Pontos
attach(mpg)
ggplot(data = mpg, aes(x = hwy, y = cty)) + geom_point(color = cyl)

#segundo gráfico | Boxplot
ggplot() +
  facet_wrap(~drv) +
  geom_boxplot(data=mpg, mapping=aes(x=fl, y=cty, color=fl))

#terceiro gráfico | Mapa de Calor
ggplot(mpg, aes(x = manufacturer, y = fl)) +
  geom_raster(aes(fill = cty)) +
  labs(title = "Mapa de Calor | Consumo de Combustível na Cidade", x = "Fabricantes", y = "Tipo de Combustível") +
  scale_fill_continuous(name = "cty") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

#mostrar grid em LATEX
## https://stackoverflow.com/questions/8112208/how-can-i-obtain-an-unbalanced-grid-of-ggplots

#principais gráficos
## https://www.analyticsvidhya.com/blog/2016/03/questions-ggplot2-package-r/

#Mini tutorial
## http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html

#tutorial completo
## http://r-statistics.co/Complete-Ggplot2-Tutorial-Part1-With-R-Code.html

#Cheat
## https://www.analyticsvidhya.com/blog/2015/08/cheat-sheet-data-visualization-r/

