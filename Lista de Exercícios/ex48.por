/* 14/03/2022 | Bianca Silva
 *	
 * Exibir quantos números, entre 0 e 1000 são:
	a.	Divisíveis por 2
	b.	Divisíveis por 4
	c.	Divisíveis por 7 */
 
programa
{	
	funcao inicio()
	{
		inteiro d2 = 0, d4 = 0, d7 = 0, cont = 0

		enquanto (cont <= 1000) {
			se (cont % 2 == 0) { d2++ }
			se (cont % 4 == 0) { d4++ }
			se (cont % 7 == 0) { d7++ }
			cont++	
		}

		escreva("QUANTIDADE DE NÚMEROS DIVISÍVEIS \nPOR 2: ", d2, "\nPOR 4: ", d4, "\nPOR 7: ", d7)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 452; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */