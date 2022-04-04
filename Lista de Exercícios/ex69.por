/* 04/04/2022 | Bianca Silva 
 * Faça um programa que o usuário irá digitar números, quantos ele quiser. Caso ele digite um número negativo o laço deve parar. 
 * Ao final do laço apresente a soma dos valores pares e soma dos valores ímpares, e a quantidade de números digitados. */

programa
{
	inclua biblioteca Tipos --> tp	
	funcao inicio()
	{
		inteiro num, qtdeDigitada = 0, par = 0, impar = 0, 
			   soma = 0, somaPar = 0, somaImpar = 0

		faca {
			escreva("Digite um número positivo: ")
			leia(num)

			se (num >= 0) {
				qtdeDigitada++
				soma += num

				se (num % 2 == 0) { 
					somaPar += num
					par++ 
				} senao {
					somaImpar += num 
					impar++	
				}
			}
		} enquanto (num >= 0)

		escreva("\nSomatória de todos os números digitados: ", soma)
		escreva("\nQuantidade de números digitados: ", qtdeDigitada)
		escreva("\nQuantidade de números pares: ", par)
		escreva("\nQuantidade de números ímpares: ", impar)		
		escreva("\nMédia entre os números pares: ", (somaPar / tp.inteiro_para_real(par)))
		escreva("\nMédia entre os números ímpares: ", (somaImpar / tp.inteiro_para_real(impar)))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */