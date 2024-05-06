programa
{
	
	funcao inicio()
	{
   //matriz
	   inteiro numeros[3][5] = {{1,2,3,4, 5}, {6, 7, 8, 9, 10}, {11, 12, 13, 14, 15}}
        //vetor
        //inteiro nVetor[3] = {11,13,14}
        inteiro soma = 0
        
         para(inteiro i = 0; i<3;i++){
         	 para(inteiro c = 0;c<5;c++){
         	 	   soma = soma + numeros[i][c]
         	 	}
         }
        escreva("o valor da soma é :"+soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 205; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 7, 12, 7}-{soma, 10, 16, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */