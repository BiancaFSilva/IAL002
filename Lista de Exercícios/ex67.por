/* 28/02/2022 | Bianca Silva 
 * Apresentar os resultados da potência de 3, variando do expoente 0 até o expoente 15. Considerar que qualquer número elevado a 0 é 1. 
 * Não é permitido o uso de outro operador matemático a não ser a multiplicação e soma
 *		3^0 = 1	3^1 = 3	3^2 = 9	(...)	3^15=14348907 */

programa
{
	inclua biblioteca Matematica --> mat	
	funcao inicio()
	{
		inteiro potencia, expo

		para (expo = 0; expo <= 15; expo++) {
			potencia = mat.potencia(3, expo) 
			escreva("3 ^ ", expo, " = ", potencia, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */