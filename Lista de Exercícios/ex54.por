/* 28/02/2022 | Bianca Silva 
 * Resolva o programa anterior (53) solicitando o nome do aluno, utilize somente UMA variável para notas, solicite do usuário se ele deseja calcular outro aluno */

programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		cadeia nome
		caracter resp 		
		real nota, media
		
		faca {
			limpa()
			escreva("Nome completo: ")
			leia(nome)
			
			faca {
				escreva("Insira a nota: ")
				leia(nota)

				se (nota < 0 ou nota > 10) {
					escreva("INVÁLIDO: as notas vão de 0 a 10!\n")	
				}
			} enquanto (nota < 0 ou nota > 10) 
	
			media = ((nota * 2) + (nota * 3)) / 5
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
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */