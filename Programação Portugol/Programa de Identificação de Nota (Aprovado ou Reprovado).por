programa
{
	
	funcao inicio()
	{
	real notaUm = 7.5
	real notaDois = 3.8
	escreva("insira a nota\n")
	
leia(notaUm , notaDois)
	real media = (notaUm + notaDois)/2
	
	se(media >= 6)
	escreva("Você está aprovado")

     senao se(media>=5)
     escreva("Você está de exame")
     
     senao
     
    escreva("Você está reprovado")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */