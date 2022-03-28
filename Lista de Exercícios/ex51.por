/* 28/03/2022 | Bianca Silva
 * Utilizando o laço de repetição, apresente a soma dos números existentes entre 1 e 100 inclusive. (1+2+3+4+5+6….+99+100). 
 * Efetuar o teste de mesa dos 4 primeiros elementos */
 
programa
{
	
	funcao inicio()
	{
		inteiro soma = 0, num = 1

		// Laço de repetição com FAÇA-ENQUANTO
		faca {	
			escreva(soma, "\n") // Teste de mesa		
			soma = soma + num			
			num++	
		} enquanto (num <= 100) 

		// Laço de repetição com ENQUANTO
		enquanto (num <= 100) {			
			soma = soma + num
			num++
		} 
		
		// Laço de repetição com PARA
		para (num; num <= 100; num++) {
			soma = soma + num			
		}
		
		escreva("\nA soma é: ", soma)
	}
}
