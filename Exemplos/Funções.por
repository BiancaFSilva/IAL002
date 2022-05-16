/* A UDF (User Defined Function) é uma sub-rotina definida pelo usuário que é chamada pelo programa principal. 
 * Fazendo com que linhas de código sejam economizadas, evidente a repetição. */
programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt

	// FUNÇÃO SIMPLES (não recebe, nem retorna valores)
	funcao inicio() {
		
		// Calculo da área da uma circunferência		
		real raio, area
		
		escreva("Digite o raio da circunferência a ser calculada: ") 
		leia(raio)
		
		area = PI() * raio * raio					// Usa o retorno da funcao PI() como variavel inteira
		escreva("A área e de ", mat.arredondar(area, 2), "\n")

		// Chamando uma função dentro de outra
		escreva("\nSoma ", soma(10, soma(15, 20)), "\n")	// Passa os valores e retorna o resultado

		// Chamando uma função passando o valor da váriavel 
		mensagem("Faculdadade FATEC")					
	}

	// Função sem recebimento de parâmetros e retorno de dados
	funcao real PI() { 
		// Parâmetros: nenhum | Retorno: real
		retorne 3.141517	
	}

	// Função com recebimento de parâmetros e retorno de dados
	funcao inteiro soma (inteiro n1, inteiro n2) {
		// Parâmetros: n1 e n2 | Retorno: inteiro
		inteiro res = n1 + n2
		
		retorne res	
	}

	// Função com recebimento de parâmetros e sem retorno de dados
	funcao mensagem (cadeia texto) {
		// Parâmetros: texto | Retorno: nenhum
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
