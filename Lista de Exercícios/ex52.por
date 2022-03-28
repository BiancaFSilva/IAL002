// Utilizando o laço de repetição, informe se os números existentes entre 1 e 20 são pares ou impares. Mostre da seguinte maneira:
programa
{	
	funcao inicio()
	{
		inteiro num = 1

		// Laço de repetição com FAÇA-ENQUANTO
		faca {			
			se (num % 2 == 0) {
				escreva("\nO número ", num, " é PAR")
			} senao {
				escreva("\nO número ", num, " é ÍMPAR")	
			}	
			num++				
		} enquanto (num <= 20)

		// Laço de repetição com ENQUANTO
		enquanto (num <= 20) {
			se (num % 2 == 0) {
				escreva("\nO número ", num, " é PAR")
			} senao {
				escreva("\nO número ", num, " é ÍMPAR")	
			}	
			num++
		}

		// Laço de repetição com PARA
		para (num; num <= 20; num++) {			
			se (num % 2 == 0) {
				escreva("\nO número ", num, " é PAR")	
			} senao {
				escreva("\nO número ", num, " é ÍMPAR")	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */