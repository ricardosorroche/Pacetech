algoritmo "Conversor - Vers�0 02"
// Fun��o : Conversor de temperatura e moeda
// Autor : Ricardo
// Data : 27/02/2022


var
celsius, fahrenheit, dolar, reais, cotacao: real
choice: literal


inicio
repita
   escreval("----------------------------------------------------")
   escreval("Digite qual o tipo de convers�o voc� deseja realizar")
   escreval("----------------------------------------------------")
   escreval("1 - Celsius para Fahrenheit")
   escreval("2 - Fahrenheit para Celsius")
   escreval("3 - Reais para D�lar")
   escreval("4 - Dolar para Reais")
   escreval("5 - EXIT")
   escreval("----------------------------------------------------")
   leia(choice)

   se choice = "1" entao
      escreval("Insira a temperatura: ")
      leia(celsius)
      celsius <- (celsius * 1.8) + 32
      escreval("A temperatura em Fahrenheit �:",celsius:2,"�")
   senao
      se choice = "2" entao
         escreval("Insira a temperatura: ")
         leia(fahrenheit)
         fahrenheit <- (fahrenheit - 32) / 1.8
         escreval("A temperatura em Celsius �:",fahrenheit:2:2,"�")
      senao
         se choice = "3" entao
            escreval("Insira o valor em reais para converter para D�lar: R$ ")
            leia(reais)
            escreval("Insira a cota��o do dia: ")
            leia(cotacao)
            dolar <- reais / cotacao
            escreval("A convers�o deu o total de: U$ ",dolar:2:2," d�lares")
         senao
            se choice = "4" entao
               escreval("Insira o valor para converter para Reais: U$ ")
               leia(dolar)
               escreval("Insira a cota��o do dia: ")
               leia(cotacao)
               reais <- dolar * cotacao
               escreval("A convers�o deu o total de: R$ ",reais:2:2," reais")
            senao
            fimse
         fimse
      fimse
   fimse
ate choice = "5"
escreval("Boa viagem")
fimalgoritmo
