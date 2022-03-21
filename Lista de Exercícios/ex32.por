/* 14/03/2022 | Bianca Silva
 *	
 * Solicitar do usuário dois números e uma operação (+,-,*,/), apresentar o resultado da operação escolhida utilizando os dois números digitados. */
 
programa
{
	
	funcao inicio()
	{
		caracter operacao
		real n1, n2, resposta

		escreva("Digite o primeiro número: ")
		leia(n1)
		escreva("Digite o segundo número: ")
		leia(n2)

		escreva("\nOPERAÇÕES \n+ Adição \n- Subtração \n* Multiplicação \n/ Divisão \n")
		escreva("\nInforme a operação: ")
		leia(operacao)

		escolha (operacao) {
			caso '+':
				resposta = n1 + n2
				pare	
			caso '-':
				resposta = n1 - n2
				pare	
			caso '*':
				resposta = n1 * n2
				pare	
			caso '/':
				se (n2 == 0) {
					escreva("NÃE EXISTE DIVISÃO POR 0!")
					resposta = 0.0
				} senao {
					resposta = n1 / n2
				}
				pare	
			caso contrario:
				resposta = 0.0
				escreva("\nINVÁLIDO")
		}

		se (operacao == '+' ou operacao == '-' ou operacao == '*' ou operacao == '/') {
			escreva("\n", n1, " ", operacao, " ", n2, " = ", resposta)
		}
	}
}
