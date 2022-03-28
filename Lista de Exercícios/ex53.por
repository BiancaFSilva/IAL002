/* 28/03/2022 | Bianca Silva
 * Solicite do usuário 4 notas, faça a validação para aceitar valores entre 0 e 10
 * Apresente no final a média ponderada das notas, sendo os pesos 2, 3, 5, 6 respectivamente. */ 
 
programa
{
	inclua biblioteca Matematica --> mat	
	funcao inicio()
	{
		caracter resp
		real media, n1, n2, n3, n4

		faca {
			faca {
				escreva("Insira a primeira nota: ")
				leia(n1)
			} enquanto (n1 < 0 ou n1 > 10) 
	
			faca {
				escreva("Insira a segunda nota: ")
				leia(n2)
			} enquanto (n2 < 0 ou n2 > 10) 
	
			faca {
				escreva("Insira a terceira nota: ")
				leia(n3)
			} enquanto (n3 < 0 ou n3 > 10) 
	
			faca {
				escreva("Insira a quarta nota: ")
				leia(n4)
			} enquanto (n4 < 0 ou n4 > 10) 
	
			media = ((n1 * 2) + (n2 * 3) + (n3 * 5) + (n4 * 6)) / 16
			escreva("\nA média ponderada entre as notas é igual a ", mat.arredondar(media,2))

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
 * @POSICAO-CURSOR = 998; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */