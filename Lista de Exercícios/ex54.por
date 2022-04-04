/* 28/02/2022 | Bianca Silva 
 * Resolva o programa anterior (53) solicitando o nome do aluno, utilize somente UMA variável para notas, solicite do usuário se ele deseja calcular outro aluno */

programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		cadeia nome
		caracter resp 		
		real nota, media = 0.0
		
		faca {
			limpa()
			escreva("Nome completo: ")
			leia(nome)

			para (inteiro vez = 1; vez <= 4; vez++) {
				faca {
					escreva("Insira a nota ", vez, ": ")
					leia(nota)

					se (nota < 0 ou nota > 10) {
						escreva("INVÁLIDO: as notas vão de 0 a 10\n")	
					}
				} enquanto (nota < 0 ou nota > 10) 

				escolha (vez) {
					caso 1:
						nota *= 2
						pare
					caso 2:
						nota *= 3
						pare
					caso 3:
						nota *= 5
						pare
					caso 4:
						nota *= 6
						pare
				}
				media += nota
			}
						
			media /= 16	
			escreva("\nA média ponderada entre as notas é igual a ", mat.arredondar(media, 2), "\n")

			escreva("\nDeseja calcular a média de outro aluno? (S/N) ")
			leia(resp)
		} enquanto (resp == 'S' ou resp == 's')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 870; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */