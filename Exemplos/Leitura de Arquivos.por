programa
{
	inclua biblioteca Arquivos --> arq
	funcao inicio()
	{
		cadeia linhaLida
          inteiro referencia // O endereço sempre deve ser informado em uma variável

          /* BOF - Begin Of File
           *  Lines[]  
           * EOF - End of File */
           
          referencia = arq.abrir_arquivo("../Arquivos/frutas.txt", arq.MODO_LEITURA) // endereço a ser lido (nome_arquivo.tipo_arquivo) 
           
          enquanto (nao arq.fim_arquivo(referencia)) { // Enquanto o arquivo não atingir o EOF
              linhaLida = arq.ler_linha(referencia)    // Gravar linha
              escreva (linhaLida, "\n")
          }
          arq.fechar_arquivo(referencia) // Encerra a execução do arquivo
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */