/* 21/02/2022 | Bianca Silva
 *	
 * Faça um programa em VisualG, que solicite do usuário o nome e sua idade. Exiba a frase “Olá sr(a) XXXXXXXXXXXXXXXXX, você tem XX anos de idade”. */
 
programa
{
	funcao inicio()
	{
		inteiro idade
		cadeia nome

		escreva("Informe seu nome: ") 
		leia(nome)
		escreva("Informe sua idade: ") 
		leia(idade)

		escreva("\nOlá sr(a) ", nome, ", você tem ", idade, " anos de idade")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */