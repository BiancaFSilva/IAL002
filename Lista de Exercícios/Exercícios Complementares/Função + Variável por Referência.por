/* 02/05/2022 | Bianca Silva
 *
 * Crie um programa que possue um vetor de 5 elementos. 
 * O programa deverá pazer o preenchimento desse vetor através de uma função, o vetor deverá ser impresso pelo programa principal */

programa
{
	inclua biblioteca Util --> ut	
	funcao inicio() {
		inteiro vetor[5]
		preencheVetor(vetor)

		para (inteiro i = 0; i < ut.numero_elementos(vetor); i++) {
			escreva ("\nVetor [", i, "] \t", vetor[i])	
		}

		// Exemplificação de passagem de valor
		inteiro numero = 0
		preencheNumero(numero)
		escreva("Valor informado: ", numero)
	}

	funcao preencheVetor (inteiro vet[]) {
		para (inteiro i = 0; i < ut.numero_elementos(vet); i++) {
			escreva("Digite o vetor[", i, "]: ")
			leia(vet[i])			
		}	
	}

	funcao preencheNumero (inteiro &num) { // O & indica q a passagem de valor da variável é por referência
		escreva("\n\nDigite um número: ")
		leia(num)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */