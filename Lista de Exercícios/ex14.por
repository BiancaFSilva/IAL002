/* 21/02/2022 | Bianca Silva
 *	
 * Faça um programa que solicite do usuário seu salário, e aplique um aumento de 10 % para esse salário somente se for < 2000. 
 * Ao final do programa apresente o valor do salário antigo e do novo salário. */

programa
{
	inclua biblioteca Matematica --> mat	
	funcao inicio()
	{
		real salario, salarioNovo

		escreva("Informe o seu salário: R$")
		leia(salario)

		se (salario < 2000) {
			salarioNovo = salario * 1.10	
			
			escreva ("Seu salário de R$", mat.arredondar(salario,2), " obteve um aumento de 10% e agora você pasou a receber R$ ", mat.arredondar(salarioNovo, 2))
		} senao {
			escreva ("Seu salário é de R$", mat.arredondar(salario,2))
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */