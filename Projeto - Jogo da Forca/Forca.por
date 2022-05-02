/* FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO | PROJETO N2 ADS - JOGO DA FORCA
 *  
 * Athirson Lins Soares
 * Bianca Letícia Floriano da Silva
 */
 
programa
{
	// BIBLIOTECAS
	inclua biblioteca Calendario --> c 	// Usado para controle do tempo
	inclua biblioteca Arquivos --> a		// Usado para leitura do banco de palavras
	inclua biblioteca Graficos --> g		// Usado para gerar a interface gráfica do jogo
	inclua biblioteca Texto --> txt		// Usado para realizar o tratamento de texto
	inclua biblioteca Util --> ut			// Usado para controle do tempo

	// INICIALIZA O JOGO
	funcao inicio()
	{	
		// VARIÁVEIS
		inteiro arquivo				// Referência para o arquivo Dicas.txt
		cadeia linha, palavra, dica		// Identificação das linhas do arquivo (P/ como palavra e D/ como dica)
		cadeia matrizDicas[100][10]		// Armazena todas as dicas
		caracter tipoLinha
	
		arquivo = a.abrir_arquivo("Dicas.txt", a.MODO_LEITURA)

		enquanto (nao a.fim_arquivo(arquivo)) { 		// Enquanto o arquivo não terminar
               linha = a.ler_linha(arquivo)    			// Grava linha
               tipoLinha = txt.obter_caracter(linha, 0) 	// Lê se a linha é P ou D
			
               se (tipoLinha == 'P') {
              		escreva(txt.caixa_alta(linha)," \n")
               } senao {
              		escreva(tipoLinha, "\n")
               }              
              
          }
          a.fechar_arquivo(arquivo)
	}

	// CONTROLE DO TEMPO PARA AUMENTAR DIFICULDADE DO JOGO
	funcao dificuldade(inteiro tempo) 
	{		
		inteiro tempoJogo = 0

		escolha (tempo) {	
			caso 1: 			// Nível Fácil
				tempoJogo = 180000
				pare			
			caso 2: 			// Nível Médio
				tempoJogo = 120000
				pare			
			caso 3: 			// Nível Difícil
				tempoJogo = 60000
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1738; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */