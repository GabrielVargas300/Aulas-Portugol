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
     cadeia cpf
     real valTotal=0
     inteiro n = 0
     
	funcao Opcao(){
		cadeia nome, numero 
		inteiro opcao
		
		escreva("Para iniciar selecione a opção que deseje no menu:\n\n")
		escreva("MENU DE OPÇÕES:\n")
	     escreva("1) Adicionar Cliente\n")
	     escreva("2) Nulo\n")
	     escreva("3) Test\n")
	     escreva("4) Sair\n")
	     escreva("Escolha sua Opção: ")
		leia(opcao)

		 se(opcao== 1){
	     	 cadastroPessoa() 
		 		}
		 		
	     senao se(opcao == 2){
	    		}
	    		
	     senao se(opcao == 3){
	     	cadastroMateriais()
	    		}
	    		
	     senao se(opcao == 4){
			fim()
				}
				
		 senao se(opcao > 4 ou opcao < 1){
          limpa()
          escreva("Esse é um dígito inválido, insira novamente!!\n")
          Opcao()
	}
}
//fim funcao opção

	funcao vazio fim(){
        escreva("Obrigado!! o programa irá se encerrar!!")
	}
//fim função fim

	funcao listar(cadeia nome){
	para(inteiro l = 0; l< 4; l++){
	     	se(pessoa[l][0] == nome){
	     		escreva("\n Listar\n-Nome: " , pessoa[l][0] +"\n-Idade: ", pessoa[l][1] +"\n-Genero: ", pessoa[l][2]+"\n-Estado Civil: ", pessoa[l][3]+"\n-Numero de Telefone: ", pessoa[l][4]+"\n-Cpf: ", pessoa[l][5])
	     	}
	}
}
//fim função listar
		     	
	funcao cadastroPessoa(){
	limpa()
//linha(l) coluna(c)
	escreva("\nAbaixo siga o processo de cadastro do cliente,ok?\n")
	escreva("Vamos iniciar com o cadastro de pessoa:\n")
		inteiro linha = 9999999, coluna = 999999
		para(inteiro l = 0; l < 4; l++){
	        para(inteiro c = 0; c < 6; c++){
	     	se (pessoa[l][c] == "" e linha == 9999999 e coluna == 999999){
	     		linha  = l
	     		coluna = c
	     	 }
	        }
		}
				escreva("\nInforme o nome do cliente:\n")
     				leia(pessoa[linha][0])
     					
	     	     escreva("\nInforme a idade:\n")
     	 			leia(pessoa[linha][1])
	     	     		
	     	     escreva("\nInforme o genero:\n")
     	 			leia(pessoa[linha][2])

				escreva("\nInforme o estado civil:\n")
     	   			leia(pessoa[linha][3])
	     			
	     	     escreva("\nInforme o numero de telefone:\n")
     	 			leia(pessoa[linha][4])
	     	     		
	     	     escreva("\nInforme o Cpf:\n")
	     	          leia(cpf)
     	 			pessoa[linha][5] = cpf
					

	cadastroEndereco()
	
}
//fim da função cadastro de pessoa

	funcao cadastroEndereco(){
	limpa()
//linha(l) coluna(c)
		escreva("\nEm seguida iniciaremos com o cadastro do endereço\n")
		
		para(inteiro l = 0; l < 4; l++){
			se (endereco[l][0] == ""){
	     	para(inteiro c = 0; c < 6; c++){
	     		escolha(c){
				caso 0:
				endereco[l][c] = cpf
					pare
	     		caso 1:
	     		escreva("\nInforme o numero da casa\n")
	     		pare
	     		caso 2:
	     		 escreva("\nInforme é o nome da Rua:\n")
	     		 pare
	     		 caso 3:
	     		 escreva("\nInforme qual é a Quadra:\n")
	     		 pare
	     		 caso 4:
	     		 escreva("\nInforme qual é o Bairro:\n")
	     		 pare
	     		 caso 5:
	     		 escreva("\nInforma a Cidade e Estado(Ex:Cidade/Estado):\n")
	     		 pare
	     		}
	     		se (endereco[l][c] != endereco[l][0]){
	     			leia(endereco[l][c])
	     			}
	     	     		
	     	     
			}
			pare
			}
			
	}
cadastroMateriais()

}
//fim da função cadastro de entereço

	funcao cadastroMateriais(){
 limpa()
      escreva("\t\tLista de materias com preço\n")
      escreva("\t\tEscolha os itens desejados\n")

		para(inteiro l = 0; l < 4; l++){
			se(entrega[l][0] == ""){
	     para(inteiro c = 0; c < 6; c++){	     	
	     	
	     	escolha(c){
	     	caso 0:
	     	entrega[l][c] = cpf
	     		pare
	     	 }
	     	 se (entrega[l][c] != entrega[l][0]){
	     			
	        }
	     }
	     escolhe()
	     	 pare
	     
	        }
		}
	}
//nesse momento estou atribuinho a primeira coluna da matriz cadastro de material o cpf da 5 coluna da matriz pessoa

	funcao escolhe(){     	
	     			
	inteiro opcao= 0 ,escolher = 0
    real qtaItens =0.0
     
     
	     	
	enquanto (escolher <= 1){
      para(inteiro m = 0; m < 6; m++){
        escreva (m+1," ")
      para(inteiro v = 0;  v < 2; v++){
          escreva(materiais[m][v]," ")
       		 }
       		 
          escreva("\n")
     		 }	
      
        escreva("\nOpção desejada: ")
        	leia(opcao)
        	se (opcao < 1 ou opcao > 6){
         	 escreva("\nPor favor digite uma opção válida!!\n")
           cadastroMateriais()
        		}
        		//validação com loop
        		
        escreva("\nQuantidade de Itens: ")
		leia(qtaItens)
		entrega[n][opcao] = t.real_para_cadeia(qtaItens)
		   
        escreva("\nDeseja adicionar mais itens?")
        escreva("\n1- Sim")
        escreva("\n2- Não")
        escreva("\nopção: ", "\n")
        	leia(escolher)
        	limpa()
     	}
     	n++
     	se (n>= 4){
     		n=0
     		}
     	// soma total
     	
      	para(inteiro i = 0;i < 6 ; i++){
      	real qtaItem =t.cadeia_para_real(entrega[0][i+1])
      	
		valTotal+=t.cadeia_para_real(materiais[i][1]) * qtaItem
		
      	}
      	
		listagem()	
	}
//Fim da função cadastro de material

	funcao listagem() {
		limpa()
		
		escreva("\t\tOrçamento\t\t\n\n")
		
    	escreva("\tDados do cliente\t\n\n")
      para (inteiro l = 0; l < 4; l++){
      	se(cpf == pessoa[l][5]){
        para(inteiro c = 0; c < 6; c++){
        	se(c == 0){
        	escreva("Nome: ")
        	}
        	se(c == 1){
        	escreva("Idade: ")
        	}
        	se(c == 2){
        	escreva("Genero: ")
        	}
        	se(c == 3){
        	escreva("Estado Civil: ")
        	}
        	se(c == 4){
        	escreva("Telefone: ")
        	}
        	se(c == 5){
        	escreva("CPF: ")
       	 	}
          escreva(pessoa[l][c],"\n")

        	
         }
        }
       }
      
      escreva("\n\tDados do endereço do cliente\t\n\n")
      para (inteiro l = 0; l < 4; l++){
      se(cpf == endereco[l][0]){
        para(inteiro c = 1; c < 6; c++){
        	
        	se(c == 1){
        	escreva("Casa: ")
        	}
        	se(c == 2){
        	escreva("Rua: ")
        	}
        	se(c == 3){
        	escreva("Quadra: ")
        	}
        	se(c == 4){
        	escreva("Bairro: ")
        	}
        	se(c == 5){
        	escreva("Cidade/Estado: ")
       	 	}
          escreva(endereco[l][c],"\n")


        }
       }
      }

      escreva("\n\tQuantidade final dos produtos\t\n\n1")
      para (inteiro l = 0; l < 4; l++){
      se(cpf == entrega[l][0]){
        para(inteiro c = 0; c < 6;c++){
        	
      escreva("Produto:")
     	 para(inteiro m = 0; m < 2; m++){
			se(m == 1){
            escreva("R$")
       					  }
 			escreva(materiais[c][m],"\t")
        	              }
            escreva("Qta ",entrega[l][c+1],"\n")

		}
	   }
	  }

      escreva("\nValor total: \n",valTotal, "\n\n\n\n\n\n\n\n\n\n\n\n")

      Opcao()
  }
//fim função listagem
	
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
 * @POSICAO-CURSOR = 5299; 
 * @DOBRAMENTO-CODIGO = [18, 48, 57, 103];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoa, 14, 8, 6}-{entrega, 16, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */,
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6304; 
 * @DOBRAMENTO-CODIGO = [21, 57, 62, 71, 110];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoa, 14, 8, 6}-{endereco, 15, 8, 8}-{entrega, 16, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */