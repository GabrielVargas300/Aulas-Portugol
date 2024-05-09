programa
{
	inclua biblioteca Tipos --> t
	//-Definir os materiais em vetor
	//-Criar uma calculadora com os valores dos produtos(soma  e multiplicação)
	//-Criar um cadastro de pessoas(Nome, endereço,movel,Numero de telefone)
	//-Criar uma função com os dados dos materias e valor(comprimento e quantidade)
	//-Criar metodo de seleção dos materias para fazer o movel
	//-Criar uma impressão de todas as informações de cadastro, valor dos materiais e quais os materiais
	//-Adicionar na impressão o tempo de termino de serviço , com o final aparecer para adicionar assinaturas dos envolvidos
	//-Criar as Telas Tela de cadastro(Pessoa, endereço), Materiais(), Rusultado Orçamento(Ficha) e conectar elas


	cadeia pessoa[4][6]
	cadeia endereco[4][6]
	cadeia entrega[4][7]= {{"","0","0","0","0","0","0"},{"","0","0","0","0","0","0"},{"","0","0","0","0","0","0"},{"","0","0","0","0","0","0"}} 
	cadeia materiais[6][2]={{"MDF","55.0"},{"MPD","35.5"},{"Puxador","12.99"},{"Caixa de Parafuso","10.0"},{"Fita de Borda ","6.5"},{"Adesivo de Contato ","12.5"}}

	funcao Opcao(){
		cadeia nome, numero 
		inteiro opcao
		escreva("Olá!\n")
		escreva("para iniciar selecione a opção que deseje no menu:\n\n")
		escreva("MENU DE OPÇÕES:\n")
	     escreva("1) Adicionar Cliente\n")
	     escreva("2) Listar o Cliente\n")
	     escreva("3) nulo\n")
	     escreva("0) Sair\n")
	     escreva("Escolha sua Opção: ")
		leia(opcao)

		   escolha(opcao){
	     	caso 1: cadastroPessoa(1) pare
	     	    
	     caso 2:leia(nome)
	     	listar(nome)
	     	pare

	     caso 3:
	     	cadastroMateriais()
	     	pare
	     	
	     caso 0:

		}
	}
//fim funcao opção

	funcao listar(cadeia nome){
	para(inteiro l = 0; l< 4; l++){
	     	se(pessoa[l][0] == nome){
	     		escreva("\n Listar\n-Nome: " , pessoa[l][0] +"\n-Idade: ", pessoa[l][1] +"\n-Genero: ", pessoa[l][2]+"\n-Estado Civil: ", pessoa[l][3]+"\n-Numero de Telefone: ", pessoa[l][4]+"\n-Cpf: ", pessoa[l][5])
	     	}
	}
}
//fim funcao listar
		     	
	funcao cadastroPessoa(inteiro valor){
		
//linha(l) coluna(c)
	escreva("\nAbaixo siga o processo de cadastro do cliente,ok?\n")
	escreva("Vamos iniciar com o cadastro de pessoa:\n")

		para(inteiro l = 0; l < valor; l++){
	     para(inteiro c = 0; c < 6; c++){
	     	se (pessoa[l][c] == "" e c == 0){
				escreva("\nInforme o nome do cliente:\n")
     	   			leia(pessoa[l][c])
	     				}
	     				
	     	se (pessoa[l][c] == "" e c == 1){
	     	     escreva("\nInforme a idade:\n")
     	 			leia(pessoa[l][c])
	     	     		}
	     	     		
	     	se (pessoa[l][c] == "" e c == 2){
	     	     escreva("\nInforme o genero:\n")
     	 			leia(pessoa[l][c])
						}
			se (pessoa[l][c] == "" e c == 3){
				escreva("\nInforme o estado civil:\n")
     	   			leia(pessoa[l][c])
	     				}
	     				
	     	se (pessoa[l][c] == "" e c == 4){
	     	     escreva("\nInforme o numero de telefone:\n")
     	 			leia(pessoa[l][c])
	     	     		}
	     	     		
	     	se (pessoa[l][c] == "" e c == 5){
	     	     escreva("\nInforme o Cpf:\n")
     	 			leia(pessoa[l][c])
						}			

	     }
	}
	escreva("\nEm seguida iniciaremos com o cadastro do endereço\n")
	cadastroEndereco(1)
	cadastroMateriais()
	Opcao()
}
//fim da função cadastro de pessoa

	funcao cadastroEndereco(inteiro valor){

//linha(l) coluna(c)
		para(inteiro l = 0; l < valor; l++){
	     para(inteiro c = 0; c < 6; c++){
	     	
	     	//nesse momento estou atribuinho a primeira coluna da matriz endereço o cpf da 5 coluna da matriz pessoa
	     	se (endereco[l][c] == "" e c == 0){
	     	endereco[l][c] = pessoa[l][5]
	     		}
	     		
	     	se (endereco[l][c] == "" e c == 1){
				escreva("\nInforme o numero da casa:\n")
     	   			leia(endereco[l][c])
	     				}
	     				
	     	se (endereco[l][c] == "" e c == 2){
	     	     escreva("\nInforme é o nome da Rua:\n")
     	 			leia(endereco[l][c])
	     	     		}
	     	     		
	     	se (endereco[l][c] == "" e c == 3){
	     	     escreva("\nInforme qual é a Quadra:\n")
     	 			leia(endereco[l][c])
						}
			se (endereco[l][c] == "" e c == 4){
				escreva("\nInforme qual é o Bairro:\n")
     	   			leia(endereco[l][c])
	     				}
	     				
	     	se (endereco[l][c] == "" e c == 5){
	     	     escreva("\nInforma a Cidade e Estado(Ex:Cidade/Estado):\n")
     	 			leia(endereco[l][c])
	     	     		}
			
	     }
	}

}
//fim da função cadastro de entereço

	funcao cadastroMateriais(){
	inteiro opcao= 0, escolher=0
     real qtaItens =0.0
     real valTotal=0
          			
      escreva("\t\tLista de materias com preço\n")
      escreva("\t\tEscolha os itens desejados\n")
      para(inteiro l = 0; l < 6; l++){
        escreva (l+1," ")
      para(inteiro c = 0;  c < 2; c++){
          escreva(materiais[l][c]," ")
       		 }
       		 
          escreva("\n")
     		 }	
      enquanto (escolher <= 1){
             escreva("Opção desejada: ")
             leia(opcao)
             escreva("\nQuantidade de Itens: ")
		   leia(qtaItens)
        		escreva("Deseja adicionar mais itens?")
         		escreva("\n1- Sim")
          	escreva("\n2- Não")
          	escreva("\nopção: ")
          		leia(escolher)
          		
          entrega[0][opcao] = t.real_para_cadeia(qtaItens)

	     
    					  }
      	para(inteiro l = 1;l < 7 ; l++){
      	real qtaItem =t.cadeia_para_real(entrega[0][l])
		valTotal+=t.cadeia_para_real(materiais[l][1]) * qtaItem
		
      	}
      	escreva(valTotal)

}
//Fim da função cadastro de material

	funcao inicio(){

	escreva("            Cadastro do Orçamento            \n\n")
	Opcao()
	
	
	}
		
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5402; 
 * @DOBRAMENTO-CODIGO = [18, 48, 57];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoa, 14, 8, 6}-{endereco, 15, 8, 8}-{entrega, 16, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */