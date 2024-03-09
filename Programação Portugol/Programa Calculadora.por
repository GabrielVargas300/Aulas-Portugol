programa
{
	
	funcao inicio()
	{
		caracter operador
		inteiro n1,n2
		escreva("Digite o operador de conta :\n")
		leia(operador)
		escreva("\nDigite o primeiro número\n")
		leia(n1)
		escreva("\nDigite o segunto número\n")
		leia(n2)

		escolha(operador){
			caso '+':
			escreva("A soma do" , n1, "+" , n2, "é : " ,(n1+n2))
			pare
			caso '-':
			escreva("A subtração do" , n1, "-" , n2, "é : " ,(n1-n2))
			pare
			caso '*':
			escreva("A multiplicador do" , n1, "*" , n2, "é : " ,(n1*n2))
			pare
			caso '/':
			escreva("A divisão do" , n1, "/" , n2, "é : " ,(n1/n2))
			pare
			
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */