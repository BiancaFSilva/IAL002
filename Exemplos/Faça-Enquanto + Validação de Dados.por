programa
{
	funcao inicio()
	{
		real valor

		// Validação de dados com Faça-Enquanto
		// MAIS RECOMENDADO
		faca {
			escreva("\nDigite um número? ")
			leia(valor)

			se (valor < 0.00 ou valor > 1290.00) {
				escreva("INVÁLIDO: O valor deve ser entre 0 e 1290! ")
			}
		} enquanto (valor < 0.00 ou valor > 1290.00)

		// Validação de dados com Enquanto
		valor = -1.00 // Forçar valor falso para começar a validação
		
		enquanto (valor < 0.00 ou valor > 1290.00) {
			escreva("\nDigite um número? ")
			leia(valor)

			se (valor < 0.00 ou valor > 1290.00) {
				escreva("INVÁLIDO? O valor deve ser entre 0 e 1290! ")
			}
		}

		// Formar redundante NÃO RECOMENDÁVEL
		escreva("\nDigite um número? ")
		leia(valor)
		
		enquanto (valor < 0.00 ou valor > 1290.00) {
			escreva("INVÁLIDO? O valor deve ser entre 0 e 1290! ")
			escreva("\nDigite um número? ") // Informação repetida
			leia(valor) // Leitura repetida
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */