/* 07/03/2022 | Bianca Silva
 *	
 * Crie um programa para resolver a equação do 2º Grau utilizando a fórmula de Baskara. 
 * Informar se é uma equação incompleta ou se não existem raízes, existindo raízes informe-as. */
 
programa
{
	inclua biblioteca Matematica	--> mat
	funcao inicio()
	{
		real a, b, c, delta, x1, x2

		escreva("Informe o valor de a: ")
		leia(a)
		escreva("Informe o valor de b: ")
		leia(b)
		escreva("Informe o valor de c: ")
		leia(c)

		se (a == 0) { // Nãe é uma equação do 2º Grau
			escreva("\nNão é possível calcular!") 	
		} senao {
			se (b == 0 ou c == 0) { // Verificar o tipo
				escreva("\nEquação Incompleta")	
			} senao {
				escreva("\nEquação Completa")	
			}	

			delta = mat.potencia(b, 2) - 4 * a * c

			se (delta < 0) {
				escreva("\nNão existem raízes para a equação informada")	
			} senao {
				x1 = (-b + mat.raiz(delta, 2)) / (2 * a)

				se (delta == 0) {
					x2 = x1
				} senao {
					x2 = (-b - mat.raiz(delta, 2)) / (2 * a)
				}

				escreva("\nx1 = ", x1, " e x2 =", x2)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1009; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */