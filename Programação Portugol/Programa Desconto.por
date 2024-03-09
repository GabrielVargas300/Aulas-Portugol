programa
{
	
	funcao inicio(){
		/*programa de desconto*/
	
		real n1
		
		
		
		
		escreva("Digite um valor\n")
		leia(n1)

		se(n1 >= 100)
		{
		n1 = n1-(n1*0.1)
		escreva("Você ganhou 10% de desconto\n",n1)
		}
	
		se(n1< 100 e n1 >= 50)
		{
		n1 = n1-(n1*0.05)
		escreva("Você ganhou 5% de desconto\n",n1)
		}
		se(n1< 50){
		escreva("Valor integral\n",n1)
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */