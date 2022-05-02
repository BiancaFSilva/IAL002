programa
{
	inclua biblioteca Util --> ut	
	funcao inicio()
	{
		 // O número dentro das chaves [] representa o tamanho do vetor
		 cadeia nome[3] // Sem valores atribuídos na criação do vetor
           inteiro idade[] = {34, 23, 54} // Com valores atribuídos

           // Atribuição individual dos valores da variável
           nome[0] = "Chris"	// O índice é iniciado em ZERO, sendo sempre "um a menos" que o tamanho do vetor
           nome[1] = "Jhon"
           nome[2] = "Marie"
           
           para (inteiro pos = 0; pos < ut.numero_elementos(nome); pos++) { // Corre o vetor todo a partir do índice
               escreva("\nNome ", nome[pos])	// pos representa os valores presentes na indice atual
               escreva("\nIdade ", idade[pos], "\n")
           }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */