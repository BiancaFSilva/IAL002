/* 21/02/2022 | Bianca Silva
 *	
 * Crie um programa para realizar o cálculo da área de uma circunferência, sendo a formula A = p*R2. 
 * Solicite o valor do raio para o usuário, efetue o cálculo e exiba o valor. */

programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real area, raio
		
		escreva("Informe o valor do raio: ")
		leia(raio)

		area = mat.potencia(raio, 2) * 3.1415

		escreva("\nA área da circunferência é igual a ", area, "cm.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */