programa
{
	funcao inicio() {		
		real raio, area
		
		escreva("Digite o raio ")
		leia(raio)

		area = PI() * raio * raio
		escreva("A area e de ", area, "m")

		escreva("\nSoma ", soma(10, soma(15,20)))
	}
	
	funcao real PI() {
		retorne 3.141517	
	}

	funcao inteiro soma (inteiro n1, inteiro n2) {
		inteiro res
		
		res = n1 + n2
		
		retorne res	
	}
}
