programa
{
	inclua biblioteca Texto
 --> txt
	funcao inicio() {		
		real raio, area
		
		escreva("Digite o raio ")
		leia(raio)

		// Usa o retorno da funcao PI() como variavel inteira
		area = PI() * raio * raio
		escreva("A area e de ", area, "m\n")

		// Passa os valores e retorna o resultado
		escreva("\nSoma ", soma(10, soma(15,20)), "\n")

		mensagem("")	
	}
	
	funcao real PI() {
		retorne 3.141517	
	}

	funcao inteiro soma (inteiro n1, inteiro n2) {
		inteiro res
		
		res = n1 + n2
		
		retorne res	
	}

	// Exercicio
	funcao mensagem (cadeia texto) {
		escreva("\nDigite uma mensagem: ")
		leia(texto)

		escreva("\n*")
		traco(texto)
		escreva("*\n")

		escreva("| ", texto, " |\n")

		escreva("*")
		traco(texto)
		escreva("*\n")
	}

	funcao traco (cadeia msg) {
		para (inteiro cont = 0; cont < txt.numero_caracteres(msg) + 2; cont++) {
			escreva("-")
		}	
	}
}
