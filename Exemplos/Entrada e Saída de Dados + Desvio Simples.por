/* 21/02/2022
 * Bianca Silva
*/
programa
{
	funcao inicio()
	{
		// Entrada de dados
		inteiro idade
		cadeia nome
		real peso, altura

		// Processamento
		escreva("Digite seu nome: ") 
		leia(nome)
		escreva("Digite sua idade: ") 
		leia(idade)
		escreva("Digite seu peso: ")
		leia(peso)
		escreva("Digite sua altura: ") 
		leia(altura) 

		// Saída de dados
		escreva("\nOlá ", nome, "! Atualmente você tem ", idade, " anos, está com ", altura, "cm de altura e pesa ", peso, "kg.")

		// Condicional simples
		se (altura <= 1.50) {
			escreva("\nVocê possui baixa estatura")
		} senao {
			escreva("\nVocê possui alta estatura")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */