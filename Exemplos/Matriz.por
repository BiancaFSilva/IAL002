programa
{
	funcao inicio()
	{
		cadeia estabelecimentos[5]
		cadeia produtos[3]		
		real cotacao[3][5] 
		inteiro prod, estab, cont		

		// Preenche o vetor dos produtos
		escreva("PRODUTOS\n")
		para (cont = 0; cont < 3; cont++) {
			escreva((cont + 1), "º produto: ")
			leia(produtos[cont])
		}

		// Preenche o vetor dos estabelecimentos
		escreva("\nESTABELECIMENTOS\n")
		para (cont = 0; cont < 5; cont++) {
			escreva((cont + 1), "º estabelecimento: ")
			leia(estabelecimentos[cont])
		}

		// Preenche a matriz com as cotações
		escreva("\nCOTAÇÕES")
		para (prod = 0; prod < 3; prod++) {
			escreva("\nCotação ", produtos[prod], "\n") // Percorre o vetor dos produtos
			
			para (estab = 0; estab < 5; estab++) {
				escreva(estabelecimentos[estab], "	R$ ") // Percorre o vetor dos estabelecimentos
				leia(cotacao[prod][estab]) // Armazena o valor do produto para aquele estabelecimento em específico
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */