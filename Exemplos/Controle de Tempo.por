programa
{
	inclua biblioteca Util --> u	 // Para cessar a função de controle de tempo "tempo_decorrido"
	funcao inicio()
	{
		inteiro tempo
		cadeia texto 
		
		tempo = u.tempo_decorrido()	// Inicia a contagem de tempo de um ponto específico
		escreva("Digite algo: ")
		leia(texto)

		escreva("Passaram-se ", u.tempo_decorrido() - tempo, " milissegundos") 	// Mostra a passagem de tempo a partir do início da contagem 
		
		se (u.tempo_decorrido() - tempo > 4000) {
			escreva("\nMuito lerdo")
		} senao {
			escreva("\nQue rápido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */