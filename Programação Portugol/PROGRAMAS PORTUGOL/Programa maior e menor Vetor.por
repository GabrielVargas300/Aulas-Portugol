programa {

	funcao inicio() {
		inteiro elementos[11] = {1, 2, 32, 5, 8, 10, 11, 12, 45, 39, 25}
		inteiro menor = elementos[0] // Inicialize o menor com o primeiro elemento
		inteiro maior = elementos[0] // Inicialize o maior com o primeiro elemento

		para (inteiro i = 1; i < 11; i++) { // Comece com i = 1 para evitar a comparação redundante com o primeiro elemento
			escreva(elementos[i] + "\n")

			se (elementos[i] < menor) { // Verifique se o elemento atual é menor do que o menor encontrado até agora
				menor = elementos[i] // Atualize o menor, se necessário
			} 
			senao se (elementos[i] > maior) { // Verifique se o elemento atual é maior do que o maior encontrado até agora
				maior = elementos[i] // Atualize o maior, se necessário
			}
		}

		escreva("Menor: " + menor + "\n")
		escreva("Maior: " + maior + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */