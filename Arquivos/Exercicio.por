programa
{
	inclua biblioteca Arquivos --> arq
	
	funcao inicio()
	{
		cadeia linha
		inteiro endereco = arq.abrir_arquivo("numeros.txt", arq.MODO_LEITURA) 

		enquanto (nao arq.fim_arquivo(endereco)) { 
              linha = arq.ler_linha(endereco)   
              escreva (linha, "\n")
          }
          arq.fechar_arquivo(endereco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */