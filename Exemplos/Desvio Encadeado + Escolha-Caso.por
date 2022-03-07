/* 07/03/2022
 * Bianca Silva
*/
programa
{
	inclua biblioteca Util --> ut // A setinha é responsável por 'apelidar' uma biblioteca para facilitar a referência 
	
	funcao inicio()
	{
		/* Solicitar o salário, caso seja menor que R$ 1000 serão acrescentados R$ 200
		 * Perguntar se tem filhos, se sim acrescentar R$ 100 por filho, caso contrário acréscimo de 10%. */
		 
		real salario, bonus
		caracter temFilho
		inteiro qtdFilhos = 0

		bonus = 0.00

		escreva("Qual seu salário atual? ")
		leia(salario)
		escreva("Você tem filhos (S/N)? ") // Case unsensitive, não diferencia maiúscula de minúscula
		leia(temFilho)
		
		se (temFilho == 'S' ou temFilho == 's') { // Validando respostas (S, s, N, n)
			escreva("Quantos? ")
			leia(qtdFilhos)
		}
		
		escreva("\nProcessando.............\n")
		ut.aguarde(2000) // Aguarda 2 segundos

		se (salario <= 1000) {
			bonus = 200.0
			se (temFilho == 'S' ou temFilho == 's') {
				bonus = bonus + (qtdFilhos * 100)
			}
		} senao {
			bonus = salario * 1.10
		}

		escreva("\nVocê obteve um bônus salarial de R$ ", bonus, "! Seu novo salário é de R$ ", (salario + bonus))
		ut.aguarde(3500)
		limpa() // Apaga tudo o que estava escrito no console/tela 




		/* Apostila de Portugol, pág. 20 a 22
	 	 * Desvio condicional utilizando a estrutura ESCOLHA-CASO */
	 	
		inteiro opcao

		escreva("==================================\n")
		escreva("          Menu Principal          \n")
		escreva("\n1 - Cadastrar Dependente")
		escreva("\n2 - Emissão de Relatório")
		escreva("\n3 - Calcular a Folha de Pagamento")
		escreva("\n4 - Encerrar")
		escreva("\n==================================\n")
		escreva("\nInforme o número desejado: ")
		leia(opcao)
		
		escolha (opcao) { // Seleciona a variável a ser condicionada
			caso 1: // aceita apenas números ou caracteres
				escreva("Você será direcionado para a área de cadastro...")
				pare // Interrompe a programa, se não todos os casos seguintes também são executados
			caso 2:
				escreva("Você será direcionado para as opções relatório...")
				pare
			caso 3:
				escreva("Estamos gerando sua folha de pagamento. Aguarde...")
				pare
			caso 4:
				escreva("Encerrando o programa")
				pare
			caso contrario: // Default, engloba o que não foi especificado nos casos anteriores
				escreva("Inválido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */