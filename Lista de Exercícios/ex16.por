/* 21/02/2022 | Bianca Silva
 *	
 * Solicitar do usuário um número inteiro qualquer e informar se esse número é par ou ímpar. */
 
programa
{	
	funcao inicio()
	{
		inteiro num

		escreva("Digite um número: ")
		leia(num)

		se (num % 2 > 0) {
			escreva("Ímpar")
		} senao {
			escreva("Par")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */