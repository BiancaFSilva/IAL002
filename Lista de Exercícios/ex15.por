/* 21/02/2022 | Bianca Silva
 *	
 * O algoritmo abaixo deve ler o salário bruto e calcular o salário líquido. 
 * Neste exemplo, o salário líquido será o salário bruto menos os descontos de INSS e IR, calculados segundo as seguintes regras: 
 * 	caso o salário seja menor que R$ 1.500,00 não devemos descontar IR e descontaremos 8% de INSS; 
 * 	para salários a partir de R$ 1.500,00 descontaremos 5% de IR e 11% de INSS. 
 * Ao final deve ser exibido o novo salário e cada um de seus descontos. */
 
programa
{	
	funcao inicio()
	{
		real salario, salarioLiquido, ir, inss

		escreva("Informe seu salário bruto: R$ ")
		leia(salario)

		se (salario < 1500.0) {
			inss = salario * 0.08
			salarioLiquido = salario - inss
				
			escreva("\nSeu saláio líquido recebeu 8% de desconto do INSS (o equivalente a R$ ", inss, ") e passou a ser de R$", salarioLiquido)
		} senao se (salario >= 1500.0) {
			ir = salario * 0.05
			inss = salario * 0.11
			salarioLiquido = salario - ir - inss

			escreva("\nSeu saláio líquido recebeu 11% de desconto do INSS (o equivalente a R$ ", inss, ") e 5% de desconto do IR (o equivalente a R% ", ir, ") passou a ser de R$", salarioLiquido)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */