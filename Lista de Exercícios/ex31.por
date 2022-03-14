/* 14/03/2022 | Bianca Silva
 *	
 * Solicitar do usuário dois números e uma operação (+,-,*,/), apresentar o resultado da operação escolhida utilizando os dois números digitados.
 * Utilizando IF */

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

		se (operacao == '+') {
			resposta = n1 + n2
		} senao se (operacao == '-') {
			resposta = n1 - n2
		} senao se (operacao == '*') {
			resposta = n1 * n2
		} senao se (operacao == '/') {
			resposta = n1 / n2
		} senao {
			resposta = 0.0
			escreva("\nINVÁLIDO")
		}

		escreva("\n", n1, " ", operacao, " ", n2, " = ", resposta)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 853; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */