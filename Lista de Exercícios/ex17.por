/* 21/02/2022 | Bianca Silva
 *	
 * Ler dois valores numéricos inteiros e apresentar o resultado da diferença do maior valor pelo menor valor. */
 
programa
{	
	funcao inicio()
	{
		inteiro num1, num2, diferenca
		
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)

		se (num1 > num2) {
			diferenca = num1 - num2
		} senao {
			diferenca = num2 - num1
		}	

		escreva("\nA diferença entre ", num1, " e ", num2, " é ", diferenca)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */