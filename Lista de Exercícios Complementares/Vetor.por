/* 02/05/2022 | Bianca Silva
 *  
 * Faça um programa que solicite do usuário 5 nomes, use um laço para isso. 
 * Após a entrada dos dados, solicite para o usuário um número que deve estar entre 0 e 4 (indices dos nomes) 
 * Apresente o nome que está neste indice, ou Não Existe caso a indice seja maior que 4.*/

programa
{
	
inclua biblioteca Util --> ut
	funcao inicio()
	{
		cadeia nome[5]
          inteiro num
           
          para (inteiro cont = 0; cont < ut.numero_elementos(nome); cont++) {
              escreva ("Digite o ", (cont + 1) ,"° nome: ") // Operação para que o primeiro índice a APARECER NA TELA seja 1, porém os índices se mantém (início em 0)
              leia (nome[cont])
          }
           
          escreva ("\nDigite um número (entre 1 e 5): ")
          leia(num)
           
          se (num < 1 ou num > 5) {
              escreva ("\nNão existe")
          } senao {
              escreva ("\n", nome[num - 1]) // Operação para que o índice do usuário (que apareceu na tela) iguale ao índice do vetor
          }
	}
}
