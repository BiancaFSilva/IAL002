/* 21/02/2022 | Bianca Silva
 *	
 * Faça um algoritmo que leia dois números reais e imprima a soma e a média aritmética desses números. */
 
programa
{
	funcao inicio()
	{
		real n1, n2, soma, media
		
		escreva("Informe o primeiro número: ")
		leia(n1)
		escreva("Informe o segundo número: ")
		leia(n2)

		soma = n1 + n2
		media = soma / 2

		escreva("\nA a soma dos valores digitados é ", soma, " e a média entre eles é igual a ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */