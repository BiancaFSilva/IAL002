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
