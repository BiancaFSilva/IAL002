/* 21/02/2022 | Bianca Silva
 *	
 * Dado o valor de um salário e convênio pelo usuário, calcule e exiba os seguintes itens:
	a. INSS – 8% sobre o salario
	b. IRRF – 11% sobre o salario
	c. Convênios – valor gasto com farmácia pelo funcionário
	d. Salario liquido = salario – inss – irrf - convênio */

programa
{	
	funcao inicio()
	{
		real salario, convenio, inss, irrf, salarioLiquido

		escreva("Informe o valor do seu salário: R$ ")
		leia(salario)
		escreva("Informe o preço do seu convênio: R$ ")
		leia(convenio)

		inss = salario * 0.08
		irrf = salario * 0.11

		salarioLiquido = salario + convenio + inss + irrf

		escreva("\nO salário informado foi de RS ", salario, " e o valor do convênio é de R$ ", convenio, ". O valor do INSS descontado é de R$ ", inss, " e o valor do IRRF descontado é de R$ ", irrf, ".\nPortanto, o salário líquido obtido é de R$ ", salarioLiquido)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */