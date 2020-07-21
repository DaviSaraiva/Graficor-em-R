#lista todos os pacotes carregados
search()

#demo demostra o que pode ser feito com cada pacote parecido com help
demo("graphics")

x=5:7
y=8:10
plot(x,y)

altura<- c(145,167,176,123,150)
largura<- c(51,63,64,40,55)
plot(altura,largura)

#plotando um datframe
?lynx
plot(lynx)
plot(lynx, ylab = "Plots com DataFrame", xlab = "")
plot(lynx, ylab = "Plots com DtaFrame", xlab="Observações")
plot(lynx,main = "Plots em DataFrames", col= 'red')
plot(lynx,main ="Plots com DadaFrames", col ='red',col.main=52,cex.main=1.5)

library(datasets)
hist(warpbreaks$breaks)
#col - cor do ploting 
#lty- tipo de linha
#lwd largura da linha 
#pch simbolo do plot
#xlab- label do eixo x
#ylab -label do eixo y
#las-como as labels do eixo sao orientadas 
#bg-background color
#mfrow- numero de plots por linha
#mfcool- numero de plots por coluna

#funçoes basicas do plot
#plot()- Sxatterplots
#lines()- adicionar linhas ao grafico 
#points()-adicionar pontos ao grafico.
#text()- adicionar label ao grifico
#title()- adicionar titulo ao grafico
?par
par('pch')
par('lty')
x=2:20
plot(x,pch="c")

par( mfrow=c(1,1),col.axis="red")
plot(1:8,las=0, xlab="xlab",ylab="ylab",main="LAS=0")
plot(1:8,las=1,xlab="xlab",ylab = "ylab",main = "LAS=1")
plot(1:8,las=2,xlab = "xlab",ylab = "ylab",main = "LAS=2")
plot(1:8,las=3,xlab = "xlab",ylab = "ylab",main = "LAS=3")

#adicionar legenda, notar que botei no topo a direita.
legend("topright",pch="1",col=c("blue","red"), legend = c("Var1","Var2"))

#cores disponiveis 
colors()
#criar um grafico
png("Grafico1.png",width = 500,height = 500, res = 72)
#tudo que eu fiquer agora ficara salvo no grafico 

plot(iris$Sepal.Length,iris$Petal.Length, col=iris$Species,
     main= "Grafico gerado a parti da iris")
dev.off()
#nas equecer d fechar  se nao tudo que eu fizer vai pra denyro do grafico

#pdf
pdf("Grafico2.pdf")
plot(iris$Sepal.Length,iris$Petal.Length, col=iris$Species,
     main= "Grafico gerado a parti da iris")
dev.off()

#estendendo plotix
install.packages('plotrix')
library(plotrix)
plot(1:6,las=3,xlab = "lty 1:6",ylab = "", main = "Mais opções de plot")
ablineclip(v=1,lty=1,col="sienna2", lwd=2)
ablineclip(v=2,lty=1,col="sienna2", lwd=2)
ablineclip(v=3,lty=1,col="sienna2", lwd=2)S
ablineclip(v=4,lty=1,col="sienna2", lwd=2)
ablineclip(v=5,lty=1,col="sienna2", lwd=2)
ablineclip(v=6,lty=1,col="sienna2", lwd=2)

plot(lynx)
plot(lynx, type="p", main= "Type P")
plot(lynx, type="l", main= "Type L")
plot(lynx, type="b", main= "Type B")
plot(lynx, type="o", main= "Type O")
plot(lynx, type="h", main= "Type H")

#dois plots juntos
par(mar=c(4,3,3,3), col.axis="black")
plot(cars$speed,type = "s", col="red", bty="n", xlab = "carros id", ylab="")
text(8,14,"Velocidade",cex=0.85,col="red")
par(new=T)

plot(cars$dist,type = "s", bty= "n", ann = F, axes = F,col="darkblue")
axis(side=4)
text(37,18,"Distancia",cex=0.85, col="darkblue")

title(main = "Velocidade x Distancia")

df<- read.csv('pibpercap.csv',stringsAsFactors = F)
df_1982<- subset(df,ano==1982)
plot(expectativa~pibpercap,data=df_1982,log="x")

#vou criar um vetor
head(df)
mycol<- c(Asia="tomato",Europe="chocolate4",Africa="dodgerblue2",
          Americas="darkgoldenrod1",Oceania="green4")
plot(expectativa~pibpercap,data=df_1982,log="x",col=mycol[continente])

#criar função mudandar o tamanho do circulo de tamnaho dato a quantidade de vezes ele esta aparecendo
mycex<- function(var,r,f=sqrt){
  x=f(var)
  x_scaled=(x-min(x))/(max(x)-min(x))
  r[1]=x_scaled* (r[2]-r[1])
  }
plot(expectativa~pibpercap,data=df_1982,log="x",
     col=mycol[continente],
     cex=mycex(pop,r=c(0.2,10))
     )


#defindido dados 
set.seed(67)
x=rnorm(10,5,7)
y=rpois(10,7)
z=rnorm(10,6,7)
t=rpois(10,9)

#criando plot
plot(x,y,col=123,pch=10,main="Multi Scatterplot",
     col.main="red",cex.main=1.5,xlab="indep",
     ylab="depend")

#adicionando outros dados
points(z,t,col="blue",pch=4)

#adicionando outros dados
points(y,t,col="red", pch=9)

#criar legenda
legend(-6,5.9,legend = c("Nivel 1","Nivel 2","Nivel 3"),
       col=c(123,"blue",777),pch=c(10,4,9),
       cex=0.65,bty="n"
       )


