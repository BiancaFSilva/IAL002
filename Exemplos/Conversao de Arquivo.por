programa
{
	inclua biblioteca Arquivos --> arq
	inclua biblioteca Tipos --> tp

	inteiro refArq
     cadeia linha, nomeArq, line
     inteiro num[100], size = 0, numero
          
	funcao inicio()
	{
          escreva("Qual o  arquivo a ser lido? ")
          leia(nomeArq)	// abrir o arquivo "numeros.txt"

          se (nao arq.arquivo_existe(nomeArq)) {
          	escreva("\nArquivo ", nomeArq, " nao encontrado")
          	retorne // Encerra o programa
          } 
           
          //le_arquivo()
          grava_arquivo()
	}

	funcao le_arquivo() {
          refArq = arq.abrir_arquivo(nomeArq, arq.MODO_LEITURA) 
           
          enquanto (nao arq.fim_arquivo(refArq)) { 
              linha = arq.ler_linha(refArq)   

               se (linha != "") {
               	num[size] = tp.cadeia_para_inteiro(linha, 10)
               	size++
               }                             
          }
          arq.fechar_arquivo(refArq) 

          para (inteiro cont = 0; cont < size; cont++) {
          	escreva("Vetor [", cont, "] = ", num[cont], "\n")
          }
	}

	funcao grava_arquivo() {
		refArq = arq.abrir_arquivo(nomeArq, arq.MODO_ACRESCENTAR)
           
          enquanto (verdadeiro) { 
			escreva("Digite um numero (negativo para sair) ")
			leia(numero)
          	
               line = tp.inteiro_para_cadeia(numero, 10)            

               se (numero < 0) { pare }   

               arq.escrever_linha(line, refArq)
          }                             
          arq.fechar_arquivo(refArq) 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 539; 
 * @DOBRAMENTO-CODIGO = [23];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */