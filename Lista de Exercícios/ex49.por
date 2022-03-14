/* 14/03/2022 | Bianca Silva
 *	
 * Apresentar os resultados de uma tabuada de um número fornecido pelo usuário, que deve seguir a seguinte forma. 
 * Exemplo: 2 x 1 = 2, 2 x 2 = 4, …., 2 x 10 = 20 */
 
programa
{	
	funcao inicio()
	{
		inteiro num, resposta, cont = 1

		escreva("Digite a tabuada a ser calculada: ")
		leia(num)

		enquanto (cont <= 10) {
			resposta = num * cont
			escreva("\n", num, " x ", cont, " = ", resposta)
			cont++	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 197; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */