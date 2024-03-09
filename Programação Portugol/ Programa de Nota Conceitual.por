programa
{
	
	funcao inicio()
	{
	/*Programa de nota conceitual*/
	
	real nota

	escreva("Digite a nota\n")
	leia(nota)

	se(nota >=90 ){
	escreva("Nota A")
	}
	senao se(nota >=80 e nota <90){
	escreva("Nota B")
	}
	senao se(nota >=70 e nota <80){
	escreva("Nota C")
	}
	senao se(nota >=60 e nota <70){
	escreva("Nota D")
	}
	senao se(nota <60)
	escreva("Nota F")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 112; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */