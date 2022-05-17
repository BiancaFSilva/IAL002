/* FATEC SÃO CAETANO DO SUL - ANTONIO RUSSO | PROJETO N2 ADS - JOGO DA FORCA
 *  
 * Athirson Lins Soares
 * Bianca Letícia Floriano da Silva
 */
 
programa
{
	// BIBLIOTECAS
	inclua biblioteca Calendario --> c 	// Usado para controle do tempo
	inclua biblioteca Arquivos --> a		// Usado para leitura do banco de palavras
	inclua biblioteca Graficos --> g		// Usado para gerar a interface gráfica do jogo
	inclua biblioteca Texto --> txt		// Usado para realizar o tratamento de texto
	inclua biblioteca Util --> ut			// Usado para controle do tempo

	// INICIALIZA O JOGO
	funcao inicio() {	
		// VARIÁVEIS
		inteiro arquivo				// Referência para o arquivo Dicas.txt
		cadeia linha, palavra, dica		// Identificação das linhas do arquivo (P/ como palavra e D/ como dica)
		cadeia matrizDicas[100][10]		// Armazena todas as dicas
		caracter tipoLinha
	
		arquivo = a.abrir_arquivo("jogo.txt", a.MODO_LEITURA)

		enquanto (nao a.fim_arquivo(arquivo)) { 		// Enquanto o arquivo não terminar
               linha = a.ler_linha(arquivo)    			// Grava linha
               tipoLinha = txt.obter_caracter(linha, 0) 	// Lê se a linha é P ou D
			
               se (tipoLinha == 'P') {
              		escreva(txt.caixa_alta(linha)," \n")
               } senao {
              		escreva(tipoLinha, "\n")
               }              
              
          }
          a.fechar_arquivo(arquivo)
	}

	// CONTROLE DO TEMPO PARA AUMENTAR DIFICULDADE DO JOGO
	funcao dificuldade(inteiro tempo) {		
		inteiro tempoJogo = 0

		escolha (tempo) {	
			caso 1: 			// Nível Fácil
				tempoJogo = 180000
				pare			
			caso 2: 			// Nível Médio
				tempoJogo = 120000
				pare			
			caso 3: 			// Nível Difícil
				tempoJogo = 60000
				pare
		}
	}

	// MENSAGEM DE DERROTA
	funcao derrota () {
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
		escreva ("\n`:::::`::::::::;' /  / `:#\n")
	}

	// MENSAGEM DE VITÓRIA
	funcao vitoria () {
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
		escreva ("\n           ||  ")
		escreva ("\n           ||")
		escreva ("\n        ___||___")
		escreva ("\n       /   ||   \\")
		escreva ("\n       \\________/\n")
	}

	// EXIBE A DICA
	funcao dicas () {
		escreva ("\n     _.,----,._")
		escreva ("\n   .:'        `:.")
		escreva ("\n .'              `.")
		escreva ("\n.'                `.")
		escreva ("\n:                  :	    __  ")
		escreva ("\n`    .'`':'`'`/    '	   /  \\")
		escreva ("\n `.   \\  |   /   ,'	  / /\\ \\")
		escreva ("\n   \\   \\ |  /   /	 / /_/ /")
		escreva ("\n    `\\_..,,.._/'	/____,'")
		escreva ("\n     {`'-,_`'-}")
		escreva ("\n     {`'-,_`'-}")
		escreva ("\n     {`'-,_`'-}")
		escreva ("\n      `YXXXXY'")
		escreva ("\n        ~^^~\n")
	}

	// MENSAGEM DE TEMPO ESGOTADO
	funcao tempo_esgotado () {
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
		escreva ("\n                  `-'\n")
	}

	// EXIBE OS DESENVOLVEDORES
	funcao creditos () {		
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
		escreva ("\n|       |   •                                                        |") 
		escreva ("\n|       |                                                           /")
		escreva ("\n|       |----------------------------------------------------------'")
		escreva ("\n\\       |")
		escreva ("\n \\     /")
		escreva ("\n  `---'\n")
	}
}
