/* 21/02/2022 | Bianca Silva
 *	
 * Faça um algoritmo que receba como entrada as medidas dos dois catetos de um triângulo retângulo e calcule e exiba a medida da hipotenusa e a área do triângulo */

programa
{
	funcao inicio()
	{
		inteiro cateto1, cateto2, hipotenusa, area

		escreva("Informe o valor do primeiro cateto: ")
		leia(cateto1)
		escreva("Informe o valor do segundo cateto: ")
		leia(cateto2)

		hipotenusa = (cateto1 ^ 2) + (cateto2 ^ 2)
		area = (cateto1 * cateto2) / 2

		escreva("\nO valor da hipotenusa é ", hipotenusa, " e a área do triângulo informado é ", area)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */