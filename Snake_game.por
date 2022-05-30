programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t

	const inteiro LARGURA_JANELA = 600
	const inteiro ALTURA_JANELA = 600

	inteiro pontuacao = 0

	logico direita=falso,esquerda=falso,para_cima=falso,para_baixo=falso
	
	funcao inicio()
	{
		montar_janela()
		enquanto(verdadeiro){
			pintar_janela()
			desenhar_painel()
			desenhar_cabeca_cobra()
			g.renderizar()
		}
	}
	funcao montar_janela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_JANELA, ALTURA_JANELA)
		g.definir_titulo_janela("Snake Game")
	}
	funcao pintar_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
	funcao desenhar_painel(){
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(0, 0, LARGURA_JANELA, 50, falso, verdadeiro)
		g.definir_cor(g.COR_AMARELO)
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(10, 10, "Pontuação atua: " + pontuacao)
	}
	funcao desenhar_cabeca_cobra(){
		g.definir_cor(g.COR_PRETO)
		g.desenhar_retangulo(275, 275, 25, 25, falso, verdadeiro)
	
	}
	funcao direcionar_cobra(){
		se(t.tecla_pressionada(t.TECLA_SETA_DIREITA)){
			direita = verdadeiro
		}
		senao se(t.tecla_pressionada(t.TECLA_SETA_ESQUERDA)){
			esquerda = verdadeiro
		}	
		senao se(t.tecla_pressionada(t.TECLA_SETA_ACIMA)){
			para_cima = verdadeiro
		}	
		senao se(t.tecla_pressionada(t.TECLA_SETA_ABAIXO)){
			para_baixo = verdadeiro
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1041; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */