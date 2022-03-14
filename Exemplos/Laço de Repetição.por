programa
{
	funcao inicio()
	{
		inteiro cont, x = 2
		cont = 1
		
		enquanto (cont <= 20) {		// Enquanto a contagem for menor que 20
			se (cont % 2 == 0) {	// e o resto da divisão do número da contagem por 2 for igual a 0
				x = x + cont
			}
			se (x > 7) {			// Se x for maior que 7, adicionar 2 a contagem
				cont+=2
			} senao {				// Se não adiciona apenas 1 a contagem
				cont++	
			}	
			//escreva("x = ", x, "\n")		// Teste de mesa
		}
		escreva("Valor de x = ", x)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 404; 
 * @PONTOS-DE-PARADA = 15;
 * @SIMBOLOS-INSPECIONADOS = {x, 5, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */