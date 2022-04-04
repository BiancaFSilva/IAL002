/* 04/04/2022 | Bianca Silva 
 * Faça um programa que solicite do usuário nome, sexo e e-mail. Faça a seguinte validação nesses dados:
	a.	Nome : Deve ter pelo menos 3 caracteres
	b.	Sexo = M ou F ou I
	c.	e-Mail = deve possuir pelo menos o caractere @ e ter 10 letras no mínimo
	d.	Dicas: você terá que utilizar as funções posicao_texto, numero_caracteres da biblioteca Texto do Portugol Studio */

programa
{
	inclua biblioteca Texto --> txt
	funcao inicio()
	{
		cadeia nome, sexo, email

		escreva("Digite seu nome: ")
		leia(nome)

		escreva("Informe seu sexo: (M/F/I) ")
		leia(sexo)

		escreva("Digite seu email: ")
		leia(email)

		se (txt.numero_caracteres(nome) < 3) {
			escreva("INVALIDO: O nome deve ter pelo menos 3 letras!")	
		} senao {
			sexo = txt.caixa_alta(sexo)	

			se (sexo != "F" e sexo != "M" e sexo != "I") {
				escreva("INVALIDO: O sexo deve ser F (feminino), M (masculino) ou I (ignorar)!")	
			} senao se (txt.numero_caracteres(email) < 10 ou txt.posicao_texto("@", email, 0) == -1) {
				escreva("INVALIDO: O email deve conter o @ e ter pelo menos 10 letras!")		
			} senao {
				escreva("\nDADOS CORRETOS: \nNome: ", nome, "\nEmail: ", email, "\nSexo: ", sexo)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */