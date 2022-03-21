/* 14/03/2022 | Bianca Silva
 *	
 * Solicitar do usuário o tamanho dos lados de um triangulo, informar se ele é isósceles, equilátero, escaleno ou não é um triangulo. Crie o programa.
 *		Equilátero = todos os lados são iguais
 *		Isósceles = 2 lados iguais e 1 diferente
 *		Escaleno = 3 lados diferentes
 * DICA: Para ser um triangulo = cada lado é menor do que a soma dos outros 2 lados */
 
programa
{
	
	funcao inicio()
	{
		inteiro lado1, lado2, lado3
		
		escreva("Informe o primeiro lado do triângulo: ")
		leia(lado1)
		escreva("Informe o segundo lado do triângulo: ")
		leia(lado2)
		escreva("Informe o terceiro lado do triângulo: ")
		leia(lado3)

		se (((lado1+lado2) > lado3) e ((lado2 + lado3) > lado1) e ((lado1+lado3) > lado2)) {
			se (lado1 == lado2 e lado2 == lado3) {
				escreva("\nEQUILÁTERO")
			} senao se ((lado1 != lado2) e (lado2 != lado3) e (lado3 != lado1)) {
				escreva("\nESCALENO")
			} senao {
				escreva("\nISÓSCELES")
			}
		} senao {
			escreva("\nNão forma um triângulo!")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
