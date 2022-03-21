programa
{	
	funcao inicio()
	{
		inteiro cont, inicio, termino, avanco

		escreva("A contagem será iniciada a partir de qual número? ")
		leia(inicio)
		escreva("A contagem terminará em qual número? ")
		leia(termino)
		escreva("A contagem avançará de quantos em quantos números? ")
		leia(avanco)

		// Inicializa a variável; teste de permanência; avanço/modificação
		para(cont = inicio; cont <= termino; cont += avanco) { // Contagem a partir dos valores informados
			escreva("\n=> ", cont)	
		} 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 506; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */