// Utilizando o laço de repetição, apresente a soma dos números existentes entre 1 e 100 inclusive. (1+2+3+4+5+6….+99+100). Efetuar o teste de mesa dos 4 primeiros elementos
programa
{	
	funcao inicio()
	{
		inteiro soma = 0, num = 1

		// Laço de repetição com FAÇA-ENQUANTO
		faca {			
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
			// escreva("\n", soma) Teste de mesa
		}
		
		escreva("\nA soma é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 585; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */