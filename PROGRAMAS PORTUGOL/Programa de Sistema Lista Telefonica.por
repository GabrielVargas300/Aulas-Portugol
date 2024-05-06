programa
{
	 inclua biblioteca Arquivos --> a
	//Agenda Telefônica
	//Desenvolva um programa que funcione como uma agenda telefônica
	//Permita ao usuário adicionar, editar e excluir contatos com nome, telefone , endereço
	
	cadeia lista[100][3]
	inteiro arquivo = a.abrir_arquivo(".\texto.txt", a.MODO_ESCRITA)

	
   funcao inserir(inteiro valor){
     	cadeia nome ,numero ,endereco
     
	     	     para(inteiro i = 0; i < valor; i++){
	     	     para(inteiro c = 0; c < 3; c++){
	     	     	se (lista[i][c] == "" e c == 0){
	     	     			escreva("\nEscreva o Contato:\n")
     	   					leia(nome)
     	   					lista[i][c] = nome
	     	     		}
	     	     	se (lista[i][c] == "" e c == 1){
	     	     			escreva("\nEscreva o Telefone:\n")
     	 					leia(numero)
     	 					lista[i][c] = numero
	     	     		}
	     	     	se (lista[i][c] == "" e c == 2){
	     	     			escreva("\nEscreva o Endereço:\n")
     	 					leia(endereco)
     	 					lista[i][c] = endereco
     	 					
	     	     		}
		
	     	     }
	     	     }
     			opcoes()
     	}

funcao listar(){
	para(inteiro l = 0; l< 100; l++){
		se(lista[l][0] != " "){
	     escreva("\n Listar\n-Nome: " , lista[l][0] +"\n-Numero: ", lista[l][1] +"\n-Endereço: ", lista[l][2])

		}}
	}
     
 funcao editar(cadeia nome,cadeia numero,cadeia endereco){
 	
	    para(inteiro l = 0; l< 100; l++){
	     	se(lista[l][0] == nome){
	     		escreva("Atualize o Nome:\n")
	        		leia(lista[l][0])
	
	     }}
	     
     	}

funcao remover(){
		cadeia nome
		escreva("Escolha qual nome do convidado para remover:")
		listar()
		 escreva("\nEscreva o Nome do Contato:\n")
		 leia(nome)
		para(inteiro l = 0;l < 100; l++){
		 se (lista[l][0] == nome){
		 	escreva("Nome:\n"+ lista[l][0] + "\n")
		 	lista[l][0]=""
		 	lista[l][1]=""
		 	lista[l][2]=""
		 	
		 }
		}
		listar()
		opcoes()
}

funcao opcoes(){

	cadeia nome , numero , endereco
	inteiro opcao

	     escreva("MENU DE OPÇÕES:\n")
	     escreva("1) Adicionar Contato\n")
	     escreva("2) Listar os Contatos\n")
	     escreva("3) Editar Contato\n")
	     escreva("4) Remover Nome\n")
	     escreva("0) Sair\n")
	     escreva("Escolha sua Opção:\n")
	     leia(opcao)
	     
	     escolha(opcao){
	     	caso 1: inserir(2) pare
	     	    
	     caso 2:leia(nome)
	     	listar()
	     	pare

	     caso 3:leia(nome) 
	     	leia(numero) 
	    		leia(endereco)
	     	editar(nome,numero,endereco)
	     	pare
	     	
	     caso 4:remover()
	     }
	}

	funcao inicio(){
	     opcoes()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @DOBRAMENTO-CODIGO = [11, 38, 46, 57, 76];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lista, 8, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */