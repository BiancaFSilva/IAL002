/* 28/02/2022 | Bianca Silva 
 * Crie um programa que calcule o fatorial de um numero fornecido pelo usuário. 
 * Fórmula: n! = n * (n – 1) * (n – 2) * ... * 1 */

programa
{	
	funcao inicio()
	{
		inteiro num, atual = 1, fatorial = 1
		
		escreva("Digite um número: ")
		leia(num)

		faca {
			fatorial = fatorial * atual 
			atual = num + 1
			escreva(fatorial, "\n") // Teste de mesa
		} enquanto (atual <= num)

		escreva("\nO fatorial de ", num, " é ", fatorial)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */