programa
{
	inclua biblioteca Texto --> txt // Importa a biblioteca de texto e apelida como 'txt' para facilitar o refeciamento
	funcao inicio()
	{
		cadeia frase 
		inteiro pos, tamanho

		escreva("Insira uma frase: ")
		leia(frase)

		tamanho = txt.numero_caracteres(frase) // Contabilida a quantidade de caracteres empregados na frase

		escreva("\nTexto separado por letras: ")
		para (pos = 0; pos < tamanho; pos++) { // Lista a posição das letras
			escreva(txt.obter_caracter(frase, pos)) // Pega letra por letra a partir da posição
			
			se (pos != (tamanho - 1)) { // Insere um traço a cada letra, menos na última
				escreva("-")
			}				
		}

		escreva("\nTexto invertido: ")
		para (pos = (tamanho-1); pos >= 0; pos--) { // Lista a posição das letras ao contrário
			escreva(txt.obter_caracter(frase, pos))
		}

		escreva("\nTexto em caixa alta: ", txt.caixa_alta(frase))
		escreva("\nTexto em caixa baixa: ", txt.caixa_baixa(frase))
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 946; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */