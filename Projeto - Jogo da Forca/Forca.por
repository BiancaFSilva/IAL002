/* FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO | N2 ADS - JOGO DA FORCA
 *  
 * Athirson Lins Soares				RA: 1680482211024
 * Bianca Letícia Floriano da Silva 		RA: 1680482211022
 * Giovanna Oliveira Vasconcelos		RA: 1680482211015
 * 
 * -- FUNCIONALIDADES -------------------------------------------------------
 * [x] Jogo
 * [x] Dicas
 * [x] Controle de Tempo
 */
 
programa
{

	// BIBLIOTECAS
	inclua biblioteca Calendario --> c			// Usado para controle do tempo
	inclua biblioteca Arquivos --> a			// Usado para leitura do banco de palavras
	inclua biblioteca Texto --> txt				// Usado para realizar o tratamento de texto
	inclua biblioteca Tipos --> t				// Usado para conversão tratamento de texto
	inclua biblioteca Util --> u				// Usado para controle do tempo
	
	// LEITURA DO ARQUIVO
	funcao inicio()
	{ 
		inteiro arquivo = a.abrir_arquivo("jogo.txt", a.MODO_LEITURA)
		pagina_inicial(arquivo)			
	}

	// DESENVOLVIMENTO DO JOGO
	funcao jogo (inteiro arquivo)
	{	
		// Variáveis
		cadeia ler_linha = a.ler_linha(arquivo) 		
		cadeia letra_errada = "", letra_certa = "" 
		cadeia matriz_jogo[100][5]
		cadeia palavra, tentativa
		
		inteiro tempo = u.tempo_decorrido() 
		inteiro dicas = 1, l = 0, c = 0		
		inteiro tamanho, posicao, sorteio
		inteiro acertos, erros
		
		logico acertou, repeticao
		
		caracter palavra_escondida[100], letras[100]
		caracter tamanho_palavra, letra

		// Preenche a matriz com as palavras e dicas do jogo
		faca 
		{
			se (txt.obter_caracter(ler_linha, 0) == 'P')
			{ 
				tamanho = txt.numero_caracteres(ler_linha)
				matriz_jogo[l][c] = txt.extrair_subtexto(ler_linha, 2, tamanho)
				c++
				ler_linha = a.ler_linha(arquivo)
				
				enquanto (txt.obter_caracter(ler_linha, 0) != 'P')
				{
					tamanho = txt.numero_caracteres(ler_linha)
					matriz_jogo[l][c] = txt.extrair_subtexto(ler_linha, 2, tamanho) 
					ler_linha = a.ler_linha(arquivo)
					c++	
					se (txt.numero_caracteres(ler_linha) == 0) { pare }		
				}
				l++ 
				c = 0 
			}	
		} enquanto (nao a.fim_arquivo(arquivo)) 				
		a.fechar_arquivo(arquivo) 
		
		sorteio = u.sorteia(0, l - 1) 			// Sorteia uma palavra
		palavra = matriz_jogo[sorteio][0] 
		tamanho = txt.numero_caracteres(palavra) 
		acertos = tamanho
		erros = 6 
		 	
		// Substitui os caracteres da palavra por "_"
		para (posicao = 0; posicao < tamanho; posicao++)
		{
			tamanho_palavra = txt.obter_caracter(palavra, posicao)
			letras[posicao] = tamanho_palavra 
			
			se (letras[posicao] == ' ' ou letras[posicao] == '-')
			{ 
				acertos = tamanho - 1 
				palavra_escondida[posicao] = '-' 
			}
			senao
			{
		 		palavra_escondida[posicao] = '_'	
			}		
		}

		// Controle de erros, dicas e tempo
		enquanto (acertos > 0 e erros > 0)
		{ 
			inteiro tempo_final = u.tempo_decorrido() - dificuldade(tempo)
		 	se (u.tempo_decorrido() > 180000)
		 	{ 
				limpa()
				tempo_esgotado()
				pare
		 	}
		 	senao
		 	{
		 		escreva("\nAcertos: ", letra_certa) 
		 		escreva("\nErros: ", letra_errada) 
		 		
		 		desenha_forca(erros)
		 		para (posicao = 0; posicao < tamanho; posicao++)
				{
					escreva(palavra_escondida[posicao], " ")
				} 		 			
		 		
		 		escreva("\n\n\nDICA")
		 		escreva("\n  •", matriz_jogo[sorteio][dicas]) 	

				escreva("\n\nDigite uma letra: ")
				leia(letra)

				se (t.caracter_para_cadeia(letra) == "dica" ou t.caracter_para_cadeia(letra) == "Dica" ou t.caracter_para_cadeia(letra) == "DICA") 
				{
					para (dicas; dicas < 4; dicas++) 
					{
						escreva("\n  •", matriz_jogo[sorteio][dicas]) 	
					}
				} 
				senao se (t.caracter_para_cadeia(letra) == palavra) 
				{ 
					acertos = 0
				} 
				 	
				repeticao = falso
				acertou = falso 				
			 	 
			 	para (posicao = 0; posicao < tamanho; posicao++)
			 	{
				 	se (letra == letras[posicao])
				 	{ 
				 		se (palavra_escondida[posicao] == letra) { 
				 			repeticao = verdadeiro 
				 			limpa()
				 		}
				 		senao
				 		{
				 			acertou = verdadeiro
				 			palavra_escondida[posicao] = letra 
				 			acertos--
				 		}		
				 	}
			     }
			     
			 	se (repeticao == verdadeiro) { acertos++ }
			 	senao se (acertou == verdadeiro)
			 	{ 
			 		letra_certa = letra + letra_certa
			 		limpa()
			 	}
			 	senao se (letra == 'D')
			 	{ 
			 		dicas++
			 		erros-- 
			 		limpa()		 			
			 	}
			 	senao
			 	{ 
			 		erros-- 
			 		letra_errada = letra + letra_errada
			 		limpa()
			 	}
		 	}		 	
			 	
			// Revela a palavra ao final do jogo
			se (acertos == 0 ou erros == 0)
			{ 
			 	se (acertos == 0) {
			 		vitoria()				 	
				 	escreva("\n\n\n Palavra: ") 
				 	para (posicao = 0; posicao < tamanho; posicao++)
				 	{
				 		escreva(palavra_escondida[posicao]) 
				 	}
			 	}
			 	se (erros == 0) {
			 		desenha_forca (erros = 0) 
			 		escreva("\n\n\n Palavra: ")
					para (posicao = 0; posicao < tamanho; posicao++)
					{
						escreva(letras[posicao]) 			 		
					}
			 	}

				escreva ("\n Tempo de Jogo: ", u.tempo_decorrido() - tempo)
				escreva ("\n Dicas Utilizadas: ", dicas)

			 	u.aguarde(5000)
			 	jogar_novamente() 
			 	}
		 	}     	 	
			
		retorne		
	}

	// CONTROLE DE TEMPO
	funcao inteiro dificuldade (inteiro tempo) 
	{
		inteiro tempo_final = 0
		escolha (tempo)
		{		
			caso 1: // Fácil, 3 minutos
				tempo_final = 180000
				pare			
			caso 2: // Médio, 2 minutos
				tempo_final = 120000
				pare			
			caso 3: // Difícil, 1 minuto
				tempo_final = 60000
				pare
		}
		retorne tempo_final
	}

	// Caso o jogador queira, o jogo é reiniciado
	funcao jogar_novamente ()
	{
		caracter resposta

		limpa()
		escreva("\n Deseja iniciar outro jogo?")
		escreva("\n S - Sim")
		escreva("\n N - Não\n\n ")
		leia (resposta)
		
		se (resposta == 'S' ou resposta == 's')
		{
			limpa()
			inicio()
		}
		senao se (resposta != 'N' ou resposta != 'n')
		{
			retorne
		}	
    	}

   	// TELAS DO JOGO
   	funcao pagina_inicial (inteiro arquivo)
   	{ 
		inteiro opcao, tempo	

		escreva("\n __| |_____________________________________________| |__")
		escreva("\n(__   _____________________________________________   __)")
		escreva("\n   | |                                             | |")
		escreva("\n   | |  JOGO DA FORCA                              | |")		
		escreva("\n   | |                                             | |")
		escreva("\n   | |  1  Novo Jogo                               | |")
		escreva("\n   | |  2  Instruções                              | |")
		escreva("\n   | |  3  Desenvolvedores                         | |")
		escreva("\n   | |  4  Sair do Jogo                            | |")
		escreva("\n __| |_____________________________________________| |__")
		escreva("\n(__   _____________________________________________   __)")
		escreva("\n   | |                                             | |")				
		escreva("\n\n   Informe a ação: ")
		leia(opcao)
		
		escolha (opcao) {
			caso 1:
				// Inicia o jogo
				limpa()
				escreva("\n __| |_____________________________________________| |__")
				escreva("\n(__   _____________________________________________   __)")
				escreva("\n   | |                                             | |")
				escreva("\n   | |  NÍVEIS DE DIFICULDADE                      | |")		
				escreva("\n   | |                                             | |")
				escreva("\n   | |  1  Fácil (3 min)                           | |")
				escreva("\n   | |  2  Médio (2 min)                           | |")
				escreva("\n   | |  3  Difícil (1 min)                         | |")
				escreva("\n __| |_____________________________________________| |__")
				escreva("\n(__   _____________________________________________   __)")
				escreva("\n   | |                                             | |")	
				escreva("\n\n   Informe o nível: ")
				leia(tempo)
				dificuldade(tempo)
				limpa()
				jogo(arquivo)
				pare
			caso 2:
				// Mostra as instruções do jogo
				instrucoes()
				limpa()
				pagina_inicial(arquivo)
				pare
			caso 3:
				// Mostra os créditos do jogo
				creditos()
				limpa()
				pagina_inicial(arquivo)
				pare
			caso 4:
				pare
		}	
	}
	
	funcao desenha_forca (inteiro erros)
	{ 
		escolha (erros) {
			caso 6:
				escreva("\n___________")
				escreva("\n__________ |")
				escreva("\n          ||")
				escreva("\n\n\n")
				pare
			caso 5:	// Desenha a cabeça
					limpa()
					escreva("\n___________")
					escreva("\n__________ |")
					escreva("\n       ___||_ ")
					escreva("\n      /`    `\\,")
					escreva("\n     /  /'''\\ \\")
					escreva("\n     \\_|^  ^|_/")
					escreva("\n        \\__/ ")
					escreva("\n\n\n")
					pare
			caso 4:	// Desenha o tronco
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
					escreva("\n\n\n")
					pare
			caso 3:	// Desenha o braço esquerdo
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
					escreva("\n\n\n")
					pare
			caso 2:	// Desenha o braço esquerdo
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
					escreva("\n\n\n")
					pare
			caso 1:	// Desenha a perna esquerda
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
					escreva("\n\n\n")
					pare
			caso 0:	// Desenha a perna direita (fim de jogo)
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
					escreva("\n\n\n")	
					derrota()
					pare
		}
    	}

    	funcao creditos () 
    	{	
		limpa()	
		escreva ("\n                                                               .---.")
		escreva ("\n                                                              /  .  \\")
		escreva ("\n                                                             |\\_/|   |")
		escreva ("\n                                                             |   |  /|")
		escreva ("\n  .----------------------------------------------------------------' |")
		escreva ("\n /  .-.                                                              |")
		escreva ("\n|  /   \\          FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO           |")
		escreva ("\n| |\\_.  |                                                            |")
		escreva ("\n|\\|  | /|   • Athirson Lins Soares               RA: 1680482211024   |")
		escreva ("\n| `---' |   • Bianca Letícia Floriano da Silva   RA: 1680482211022   |")
		escreva ("\n|       |   • Giovanna Oliveira Vasconcelos      RA: 1680482211015   |") 
		escreva ("\n|       |                                                            /")
		escreva ("\n|       |-----------------------------------------------------------'")
		escreva ("\n\\       |")
		escreva ("\n \\     /  Funcionalidades: [x] Jogo  [x] Dicas  [x] Controle de tempo")
		escreva ("\n  `---'\n")
		u.aguarde(10000)
	}
 
	funcao instrucoes () 
	{
		limpa()
		escreva("\n __| |_____________________________________________________________________________| |__")
		escreva("\n(__   _____________________________________________________________________________   __)")
		escreva("\n   | |                                                                             | |")
		escreva("\n   | |  Instruções:                                                                | |")		
		escreva("\n   | |                                                                             | |")		
		escreva("\n   | |  •  Cada palavra tem apenas 4 dicas                                         | |")
		escreva("\n   | |  •  Atenção aos acentos e pontuação                                         | |")
		escreva("\n   | |  •  No início da partida o jogador definirá o nível de dificuldade          | |")
		escreva("\n   | |  •  Há duas formas de perder: por erro ou pelo término do tempo             | |")
		escreva("\n   | |  •  Para consultar uma dica basta digitar 'DICA'                            | |")
		escreva("\n   | |  •  CUIDADO: letras maiúsculas e minúsculas são diferenciadas               | |")
		escreva("\n __| |_____________________________________________________________________________| |__")
		escreva("\n(__   _____________________________________________________________________________   __)")
		escreva("\n   | |                                                                             | |\n\n")
		u.aguarde(15000)
	}	
    
    	funcao derrota ()
    	{ 		
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
    
    	funcao tempo_esgotado ()
    	{ 
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
     
     funcao vitoria ()
     { 
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
		escreva ("\n           ||")
		escreva ("\n           ||")
		escreva ("\n           ||")
		escreva ("\n           ||")
		escreva ("\n        ___||___")
		escreva ("\n       /   ||   \\")
		escreva ("\n       \\________/")
     }
}
