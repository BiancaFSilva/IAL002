programa
{
	funcao inicio()
	{
		inteiro cont, inicio, termino, avanco
		
		faca {
			escreva("A contagem será iniciada a partir de qual número? ")
			leia(inicio)
			escreva("A contagem terminará em qual número? ")
			leia(termino)			
		} enquanto (termino < inicio)

		faca {
			escreva("A contagem avançará de quantos em quantos números? ")
			leia(avanco)

			se (avanco < 0) {
				escreva("Contagem inválida")	
			}
		} enquanto (avanco <= 0)

		para(cont = inicio; cont <= termino; cont += avanco) { 
			escreva("\n=> ", cont)	
		} 	
	}
}
