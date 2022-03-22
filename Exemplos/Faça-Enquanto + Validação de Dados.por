programa
{
	funcao inicio()
	{
		real valor

		// Validação de dados com Faça-Enquanto
		// MAIS RECOMENDADO
		faca {  // Os códigos serão executados e validados no final
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
				escreva("INVÁLIDO: O valor deve ser entre 0 e 1290! ")
			}
		}


		// Forma redundante 
		// NÃO RECOMENDÁVEL
		escreva("\nDigite um número? ")
		leia(valor)
		
		enquanto (valor < 0.00 ou valor > 1290.00) {
			escreva("INVÁLIDO? O valor deve ser entre 0 e 1290! ")
			escreva("\nDigite um número? ") // Solicitação duplicada
			leia(valor) // Leitura repetida
		}
	}
}
