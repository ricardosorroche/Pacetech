package ProjetoSemana06;

import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        
        float tempcelsius, tempfahrenheit, celsius, fahrenheit, dolar, reais, cotacao, moeda;
        int choice = 0;
        
        Scanner leitor = new Scanner(System.in);
         
        do{
            
            System.out.println("---------------------------"); 
            System.out.println("1 - Celsius para Fahrenheit");
            System.out.println("2 - Fahrenheit para Celsius");
            System.out.println("3 - Reais para Dólar");
            System.out.println("4 - Dólar para reais");
            System.out.println("0 - Sair");
            System.out.println("---------------------------");
            System.out.print("Digite a opção escolhida: ");
            choice = leitor.nextInt();
            
            System.out.println();
        
            switch(choice){
                case 1:
                    System.out.print("Informe a temperatura em Celsius: ");
                    tempcelsius = leitor.nextFloat();
                    fahrenheit = (tempcelsius * 1.8f) + 32;
                    System.out.println();
                    System.out.println("A temperatura convertida para Fahrenheit é: " + fahrenheit);
                    break;
                case 2:
                    System.out.print("Informe a temperatura em Fahrenheit: ");
                    tempfahrenheit = leitor.nextFloat();
                    celsius = (tempfahrenheit - 32) / 1.8f;
                    System.out.println();
                    System.out.println("A temperatura convertida para Celsius é: " + celsius);
                    break;
                case 3:
                    System.out.print("Informe a cotação atual: ");
                    cotacao = leitor.nextFloat();
                    System.out.print("Informe a quantia em reais a ser convertida para Dólar: R$");
                    moeda = leitor.nextFloat();
                    dolar = moeda / cotacao;
                    System.out.println();
                    System.out.println("Dólares: U$ " + dolar);
                    break;
                case 4:
                    System.out.print("Informe a cotação atual: ");
                    cotacao = leitor.nextFloat();
                    System.out.print("Informe a quantia em dólares a ser convertida para Reais: U$");
                    moeda = leitor.nextFloat();
                    reais = moeda * cotacao;
                    System.out.println();
                    System.out.println("Reais: R$ " + reais);
                    break;
                case 0:
                    break;
            }
        }while (choice != 0);
    }
} 