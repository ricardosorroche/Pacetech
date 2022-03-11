algoritmo "Conversor"

// Função : Conversor de temperaturas
// Autor : Ricardo
// Data : 10/03/2022


var

i, j : inteiro
aux1, aux2 : real
temperaturas, horarios: vetor[1..4] de real
choice : literal


procedimento menu()
inicio
   escreval("----------------------------------------------------")
   escreval("Digite qual o tipo de conversão você deseja realizar")
   escreval("----------------------------------------------------")
   escreval()
   escreval("1 - Celsius para fahrenheit")
   escreval("2 - Fahrenheit para celsius")
   escreval("999 - Sair")
   escreval()
   escreval("----------------------------------------------------")
   escreval("Digite a opção escolhida: ")
   leia(choice)
   limpatela
fimprocedimento

procedimento lerDados()
inicio
   para i de 1 ate 4 faca
      escreva("Digite a temperatura", i, ": ")
      leia(temperaturas[i])

      escreva("Informe o horário da medição: ")
      leia(horarios[i])
      escreval()
   fimpara
   limpatela
fimprocedimento

procedimento conversor()
inicio
metodoBolha()

se choice = "1" entao
   para i de 1 ate 4 faca
      escreval("Temperatura", temperaturas[i], "° celsius, registrada às", horarios[i], " horas corresponde a ", ((temperaturas[i] * 1.8) + 32):2, "° F")
      escreval()
   fimpara
senao
   para i de 1 ate 4 faca
      escreval("Temperatura", temperaturas[i], "° fahrenheit, registrada às", horarios[i], " horas corresponde a ", ((temperaturas[i] - 32) / 1.8):2, "° C")
      escreval()
   fimpara
fimse
fimprocedimento

procedimento metodoBolha()
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se ( temperaturas[j] > temperaturas[i] ) entao
         aux1 <- temperaturas[i]
         temperaturas[i] <- temperaturas[j]
         temperaturas[j] <- aux1
         aux2 <- horarios[i]
         horarios[i] <- horarios[j]
         horarios[j] <- aux2
      fimse
   fimpara
fimpara
fimprocedimento

inicio

repita
   menu()

   escolha choice
      caso "1"
         lerDados()
         conversor()
      caso "2"
         lerDados()
         conversor()
      caso "999"
      outrocaso
         escreval()
         escreval("Opção inválida. Tente novamente")
   fimescolha
ate choice = "999"
limpatela

escreval("Programa finalizado!")
fimalgoritmo
