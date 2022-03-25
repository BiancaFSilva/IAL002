programa
{
	funcao inicio()
	{
		real media
		inteiro faltas

		escreva("Qual a média? ")
		leia(media)

		escreva("Quantidade de Faltas: ")
		leia(faltas)

		se (media >= 6 e faltas <= 20) {
			escreva("O aluno foi aprovado!!!")	
		} senao {
			se (media < 6 e faltas > 20) {
				escreva("Aluno foi reprovado por média e por falta")
			} senao se (faltas > 20) {
				escreva("Aluno foi reprovado por faltas")
			} senao {
				escreva("Aluno foi reprovado por média")	
			}
		}
	}
}
