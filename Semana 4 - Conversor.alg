algoritmo "Conversor"
// Função : Conversor de temperatura e moeda
// Autor : Ricardo
// Data : 27/02/2022


var
celsius: real
fahrenheit: real
dolar: real
reais: real
choice: literal


inicio
repita
   escreval("----------------------------------------------------")
   escreval("Digite qual o tipo de conversão você deseja realizar")
   escreval("----------------------------------------------------")
   escreval("1 - Celsius para Fahrenheit")
   escreval("2 - Fahrenheit para Celsius")
   escreval("3 - Reais para Dólar")
   escreval("4 - Dolar para Reais")
   escreval("5 - EXIT")
   escreval("----------------------------------------------------")
   leia(choice)

   se choice = "1" entao
      escreval("Insira a temperatura: ")
      leia(celsius)
      celsius <- (celsius * 1.8) + 32
      escreval("A temperatura em Fahrenheit é:",celsius,"°")
   senao
      se choice = "2" entao
         escreval("Insira a temperatura: ")
         leia(fahrenheit)
         fahrenheit <- (fahrenheit - 32) / 1.8
         escreval("A temperatura em Fahrenheit é:",fahrenheit,"°")
      senao
         se choice = "3" entao
            escreval("Insira o valor em reais para converter para Dólar: R$ ")
            leia(reais)
            dolar <- reais / 5.20
            escreval("A conversão deu o total de: U$ ",dolar:2," dólares")
         senao
            se choice = "4" entao
               escreval("Insira o valor para converter para Reais: U$ ")
               leia(dolar)
               reais <- dolar * 5.20
               escreval("A conversão deu o total de: R$ ",reais:2," reais")
            senao
            fimse
         fimse
      fimse
   fimse
ate choice = "5"
escreval("Boa viagem")
fimalgoritmo


