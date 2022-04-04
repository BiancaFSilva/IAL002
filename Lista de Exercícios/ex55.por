/* 28/02/2022 | Bianca Silva 
 * Faça um programa que solicite do usuário 10 números, esses números devem estar entre 1 e 100, caso esteja fora desse intervalo não aceite o número. 
 * Ao final exiba quantos números são maiores que 20 e quantos números são menores que 10. */

programa
{	
	funcao inicio()
	{
		inteiro num, cont, maior20 = 0, menor10 = 0	
		    		 			
		para (cont = 1; cont <= 10; cont++) {
			escreva("Digite um número: ")
    			leia(num)
    				
	    		se (num < 0 ou num > 100) {
	    			escreva("INVÁLIDO!\n")		    				    			
	    		} senao {
	    			se (num >= 20) { maior20++ }
				se (num <= 10) { menor10++ }
	    		}  		
		} 

		escreva("\nQUANTIDADE DE NÚMEROS \nMaiores que 20: ", maior20, "\nMenores que 10: ", menor10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 736; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */