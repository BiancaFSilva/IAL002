/* FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO | PROJETO N2 ADS - JOGO DA FORCA
 *  
 * Athirson Lins Soares				RA: 1680482211024
 * Bianca Letícia Floriano da Silva 	RA: 1680482211022
 * Giovanna Oliveira Vasconcelos		RA: 1680482211015
 * 
 * -- FUNCIONALIDADES -------------------------------------------------------
 * Jogo
 * Dicas
 * Controle de Tempo
 */
 
programa
{
	// BIBLIOTECAS
	inclua biblioteca Calendario --> c 	// Usado para controle do tempo
	inclua biblioteca Arquivos --> a		// Usado para leitura do banco de palavras
	inclua biblioteca Teclado --> t		// Usado para entrada de dados (controle da seleção no menu)
	inclua biblioteca Texto --> txt		// Usado para realizar o tratamento de texto
	inclua biblioteca Tipos --> tp		// Usado para realizar a conversão dos valores de variáveis
	inclua biblioteca Util --> u			// Usado para controle do tempo	
	
	// VARIÁVEIS GLOBAIS
	inteiro linha = 0, coluna = 0, i = 0, p, l = 0, c = 0
	inteiro qtdLetras, qtdPalavras = 0, qtdDicas = 0
	cadeia palavra_sorteada
	
	funcao inicio ()
	{	
		cadeia jogo[51][5]
		cadeia linhas[300]		
	
		inteiro arquivo = a.abrir_arquivo("jogo.txt", a.MODO_LEITURA)		
		enquanto (nao a.fim_arquivo(arquivo)) {
			jogo[linha][coluna] = a.ler_linha(arquivo) 

               coluna++
			se (coluna > 4) {
				linha++ 
				coluna = 0				
				se (linha > u.numero_linhas(jogo)) { pare }
			}			
		}
		a.fechar_arquivo(arquivo)	

		// Tratativa de texto
		para (i = 0; i < u.numero_linhas(jogo); i++) {  
			se (txt.obter_caracter(jogo[linha][coluna], 0) == 'P') { 
               	jogo[linha][coluna] = txt.caixa_alta(jogo[linha][coluna])              		
               	qtdPalavras++                 
	          } senao se (txt.obter_caracter(jogo[linha][coluna], 0) == 'D') {	              		
	               qtdDicas++
	          }  
	                	
	          qtdLetras = txt.numero_caracteres(jogo[linha][coluna])
	          jogo[linha][coluna] = txt.extrair_subtexto(jogo[linha][coluna], 3, qtdLetras)	               					
			//escreva(jogo[linha][coluna], "\n\t")	
		} 

		tela_inicial()	
	}
		
	funcao sorteia_palavra (cadeia sorteio[][]) {
		escreva(qtdPalavras)
				
		p = u.sorteia(0, (qtdPalavras - 1)) 		// Sorteia 0 até a quantidade de palavras armazenadas
		palavra_sorteada = sorteio[l][c]			// Armazena a palavra do número sorteado
		escreva(palavra_sorteada)

		/*para (i = 0; i < qtdLetras; i++) {
			tracos[i] = '_' 										// Salva cada posição do array como um traço
			forma[i] = txt.obter_caracter(palavra_sorteada, i) 			// Armazena cada letra 				
		}*/
	}


	// TELAS DO JOGO
	funcao tela_inicial () {
		inteiro opcao		
		
		escreva("\n __| |_____________________________________________________________________________| |__")
		escreva("\n(__   _____________________________________________________________________________   __)")
		escreva("\n   | |                                                                             | |")
		escreva("\n   | |  Instruções:                                                                | |")		
		escreva("\n   | |                                                                             | |")
		escreva("\n   | |  •  Cada palavra tem apenas 4 dicas                                         | |")
		escreva("\n   | |  •  No início da partida o jogador definirá o nível de dificuldade          | |")
		escreva("\n   | |  •  Há duas formas de perder: por erro ou pelo término do tempo             | |")
		escreva("\n   | |  •  Para consultar uma dica basta digitar 'DICA'                            | |")
		escreva("\n   | |_____________________________________________________________________________| |")
		escreva("\n   | |                                                                             | |")
		escreva("\n   | |  1  Novo Jogo                                                               | |")
		escreva("\n   | |  2  Placar                                                                  | |")
		escreva("\n   | |  3  Desenvolvedores                                                         | |")
		escreva("\n   | |  4  Sair do Jodo                                                            | |")
		escreva("\n __| |_____________________________________________________________________________| |__")
		escreva("\n(__   _____________________________________________________________________________   __)")
		escreva("\n   | |                                                                             | |\n\n")
		leia(opcao)
		
		escolha (opcao) {
			caso 1:
				// Inicia o jogo
				desenhar_forca()
				pare
			caso 2:
				pare
			caso 3:
				// Mostra os créditos do jogo
				creditos()
				pare
			caso contrario:			
				pare
		}		
	}
	
	funcao desenhar_forca () {	
		inteiro erro = 0

		escreva("\n___________")
		escreva("\n__________ |")
		escreva("\n          ||")
		
		enquanto (erro < 5) {
			escolha (erro) {
				caso 1:	// Desenha a cabeça
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					pare
				caso 2:	// Desenha o tronco
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n      ___| |___")
					escreva("\n      | |/|\\| |")
					escreva("\n      | ´ |.` |")
					escreva("\n      |   |.  |")
					escreva("\n      |   |.  |")
					escreva("\n      |___|.__|")
					pare
				caso 3:	// Desenha o braço direito
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n      ___| |___")
					escreva("\n     /| |/|\\| |")
					escreva("\n    /_| ´ |.` |")
					escreva("\n    | |   |.  |")
					escreva("\n    | |   |.  |")
					escreva("\n    | |___|.__|")
					pare
				caso 4:	// Desenha o braço esquerdo
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n      ___| |___")
					escreva("\n     /| |/|\\| |\\")
					escreva("\n    /_| ´ |.` |_\\")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |___|.__| |")
					pare
				caso 5:	// Desenha a perna direita
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n      ___| |___")
					escreva("\n     /| |/|\\| |\\")
					escreva("\n    /_| ´ |.` |_\\")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |___|.__| |")
					escreva("\n      ,===c")
					escreva("\n      |__/|")
					escreva("\n      |  ´|")
					escreva("\n      |   |")
					escreva("\n      |   |")
					escreva("\n      |___|")
					escreva("\n     (____|")
					pare
				caso 6:	// Desenha a outra perna (fim de jogo)
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n      ___| |___")
					escreva("\n     /| |/|\\| |\\")
					escreva("\n    /_| ´ |.` |_\\")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |   |.  | |")
					escreva("\n    | |___|.__| |")
					escreva("\n      ,===c===.")
					escreva("\n      |__/|\\__|")
					escreva("\n      |  ´|`  |")
					escreva("\n      |   |   |")
					escreva("\n      |   |   |")
					escreva("\n      |___|___|")
					escreva("\n     (____|____)")
		
					u.aguarde(1500)
					derrota()
					pare
			}
		}
	}
	
	funcao creditos () {	
		limpa()	
		escreva ("\n                                                               .---.")
		escreva ("\n                                                              /  .  \\")
		escreva ("\n                                                             |\\_/|   |")
		escreva ("\n                                                             |   |  /|")
		escreva ("\n  .----------------------------------------------------------------' |")
		escreva ("\n /  .-.                                                              |")
		escreva ("\n|  /   \\          FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO           |")
		escreva ("\n| |\\_.  |                                                            |")
		escreva ("\n|\\|  | /|   • Athirson Lins Soares                                   |")
		escreva ("\n| `---' |   • Bianca Letícia Floriano da Silva                       |")
		escreva ("\n|       |   • Giovanna Oliveira Vasconcelos                          |") 
		escreva ("\n|       |                                                           /")
		escreva ("\n|       |----------------------------------------------------------'")
		escreva ("\n\\       |")
		escreva ("\n \\     /")
		escreva ("\n  `---'\n")
	}

	funcao dicas () {
		cadeia dica = ""
		
		escreva ("\n     _.,----,._")
		escreva ("\n   .:'        `:.")
		escreva ("\n .'              `.")
		escreva ("\n.'                `.")
		escreva ("\n:                  :	    __  ")
		escreva ("\n`    .'`':'`'`/    '	   /  \\   __ ___ __ _")
		escreva ("\n `.   \\  |   /   ,'	  / /\\ \\ / // __/ _` |")
		escreva ("\n   \\   \\ |  /   /	 / /_/ // /\\ (__ (_| |")
		escreva ("\n    `\\_..,,.._/'	/____,'/_/  \\___\\__,_|")
		escreva ("\n     {`'-,_`'-}")
		escreva ("\n     {`'-,_`'-}		", dica)
		escreva ("\n     {`'-,_`'-}")
		escreva ("\n      `YXXXXY'")
		escreva ("\n        ~^^~")
	}

	funcao vitoria () {
		limpa()	
		escreva ("\n   *      *    .   *    .")
		escreva ("\n        ..  *    o")
		escreva ("\n      o   *  .    *")
		escreva ("\n        ________")
		escreva ("\n       (________)")
		escreva ("\n       |    o   |")
		escreva ("\n       | o    o |")
		escreva ("\n       |   o    |")
		escreva ("\n       | o    o |	        _ _             _       ")
		escreva ("\n       | o  o   |	 /\\   /(_) |_ ___  _ __(_) __ _ ")
		escreva ("\n       |      o |	 \\ \\ / / | __/ _ \\| '__| |/ _` |")
		escreva ("\n       ( o      )	  \\ V /| | |_ (_) | |  | | (_| |")
		escreva ("\n        \\   o  /	   \\_/ |_|\\__\\___/|_|  |_|\\__,_|")
		escreva ("\n         \\    /")
		escreva ("\n          \\  /")
		escreva ("\n           ||")
		escreva ("\n           ||		  Palavra: ")
		escreva ("\n           ||		  Tempo de Jogo: ")
		escreva ("\n           ||  		  Dicas Utilizadas:")
		escreva ("\n           ||")
		escreva ("\n        ___||___")
		escreva ("\n       /   ||   \\")
		escreva ("\n       \\________/")
	}

	funcao derrota () {
		limpa()	
		escreva ("	       ...")
		escreva ("\n             ;::::;")
		escreva ("\n           ;::::; :;")
		escreva ("\n         ;:::::'   :;")
		escreva ("\n        ;:::::;     ;.")
		escreva ("\n       ,:::::'       ;           OOO0")
		escreva ("\n       ::::::;       ;          OOOOO0")
		escreva ("\n       ;:::::;       ;         OOOOOOOO")
		escreva ("\n      ,;::::::;     ;'         / OOOOOOO		    ___                    _        ")
		escreva ("\n    ;:::::::::`. ,,,;.        /  / DOOOOOO		   /   \\___ _ __ _ __ ___ | |_ __ _ ")
		escreva ("\n  .';:::::::::::::::::;,     /  /     DOOOO		  / /\\ / _ \\ '__| '__/ _ \\| __/ _` |")
		escreva ("\n ,::::::;::::::;;;;::::;,   /  /        DOOO		 / /_//  __/ |  | | | (_) | |_ (_| |")
		escreva ("\n;`::::::`'::::::;;;::::: ,#/  /          DOOO		/___,' \\___|_|  |_|  \\___/ \\__\\__,_|")
		escreva ("\n:`:::::::`;::::::;;::: ;::#  /            DOOO")
		escreva ("\n::`:::::::`;:::::::: ;::::# /              DOO")
		escreva ("\n`:`:::::::`;:::::: ;::::::#/               DOO")
		escreva ("\n :::`:::::::`;; ;:::::::::##                OO")
		escreva ("\n ::::`:::::::`;::::::::;:::#                OO")
		escreva ("\n `:::::`::::::::::::;'`:;::#                O")
		escreva ("\n`:::::`::::::::;' /  / `:#")
	}

	funcao tempo_esgotado () {
		limpa()	
		escreva ("\n                        .-'`'-.")
		escreva ("\n              ,-'`'.   '._     \\     ______")
		escreva ("\n             /    .'  ___ `-._  |    \\ .-'`")
		escreva ("\n            |   .' ,-' __ `'/.`.'  ___\\")
		escreva ("\n    ______  \\ .' \\',-' 12 '-.  '.  `-._ \\			   ___   _____                               _             _                 ")
		escreva ("\n    '`-. /   ` / / 11    7 1 `. `.    '.\\		  	  /___\\ /__   \\___ _ __ ___  _ __   ___     /_\\   ___ __ _| |__   ___  _   _ ")
		escreva ("\n       //___  . '10     /    2 \\  ;		 	 //  //   / /\\/ _ \\ '_ ` _ \\| '_ \\ / _ \\   //_\\\\ / __/ _` | '_ \\ / _ \\| | | |")
		escreva ("\n      / _.-'  | |      O      3|  |  ______		/ \\_//   / / |  __/ | | | | | |_) | (_) | /  _  \\ (__ (_| | |_) | (_) | |_| |")
		escreva ("\n     /.'      | |9      \\      '  '  '`-. /		\\___/    \\/   \\___|_| |_| |_| .__/ \\___/  \\_/ \\_/\\___\\__,_|_.__/ \\___/ \\__,_|")
		escreva ("\n       ______ '  \\ 8     \\   4/  /      //___")
		escreva ("\n       \\ .-'` '. `'.7  6   5.'  '      / _.-'")
		escreva ("\n     ___\\       `. _ `''''` _.'\\-.   /.'")
		escreva ("\n     `-._ \\       .//`''--''   (   )mx")
		escreva ("\n         '.\\     (   )          '-`")
		escreva ("\n                  `-'")
	}	
}
