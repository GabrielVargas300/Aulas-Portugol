programa
{
	
	funcao inicio()
	{
		//matriz
	   inteiro numeros[3][5] = {{15,2,3,4,5}, {6, 7, 8, 9, 10}, {11, 12, 13, 14, 1}}
		inteiro maior = numeros[0][0]
		inteiro menor = numeros[0][0]
		

		para(inteiro i = 0; i<3;i++){
			inteiro vermaior = numeros[i][0]
			inteiro vermenor = numeros[i][0]
			
         	 para(inteiro c = 0;c<5;c++){
		
			se(numeros[i][c] > maior)
			{
				maior = numeros[i][c]
						
			}
			se(numeros[i][c] < menor)
			{
				menor = numeros[i][c]	
					
			}
			se(numeros[i][c] > vermaior)
			{
				vermaior = numeros[i][c]
				
			}
			se(numeros[i][c] < vermenor)
			{
				vermenor = numeros[i][c]}
				
				se(c==4){
					escreva("O maior valor é :"+vermaior+"\n")
					escreva("O menor valor é :"+vermenor+"\n")
					vermaior = numeros[0][0]
					vermenor = maior
					
				 
					
					
			}
		}
		
		
	}
	escreva("O maior valor no vetor e: " + maior + "\n")
		escreva("O menor valor no vetor e: " + menor + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 7, 12, 7}-{maior, 8, 10, 5}-{menor, 9, 10, 5}-{vermaior, 13, 11, 8}-{vermenor, 14, 11, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */