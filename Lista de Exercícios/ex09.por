/* 21/02/2022 | Bianca Silva
 *	
 * Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit. 
 * A formula de conversão é: F := (9 * C + 160)/5, sendo C a temperatura em Celsius e F em Fahrenheit */

programa
{
	funcao inicio()
	{
		real temperatura, conversao
		
		escreva("Informe a temperatura: ") 
		leia(temperatura)

		conversao = (9 * temperatura + 160) / 5

		escreva("\nA temperatura informada foi de ", temperatura, "°C, ao converter de Celsius para Fahrenheit foi obtida uma nova temperatura de ", conversao, "°F.") 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */