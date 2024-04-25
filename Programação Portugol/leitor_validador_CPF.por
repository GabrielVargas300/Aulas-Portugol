programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Tipos --> type
	funcao vazio linha_codigo(){
		escreva("\n\n=============================================\n")
		} 
  funcao inicio() {
    inteiro cpf[11], nWCpf[11], somat = 0, procuraVetor = 0, resto = 0
    caracter digito
    cadeia cpfCompleto
    linha_codigo()
    escreva("Digite o seu CPF (apenas n�meros): ")
    leia(cpfCompleto)
      //leitura de cada d�gito do CPF
      para (inteiro cont = 0; cont <= 10; cont++){
        digito = txt.obter_caracter(cpfCompleto,cont)
        cpf[cont] = type.caracter_para_inteiro(digito)
      }
      //In�cio da valida��o do CPF (1� d�gito)
        para (inteiro cont1 = 0; cont1 <= 8; cont1++){
            nWCpf[cont1] = cpf[cont1]              
        }
      //Multiplica��o para valida��o
        para (inteiro multiplicaV1 = 10; multiplicaV1 >=2; multiplicaV1--){
          nWCpf[procuraVetor] = nWCpf[procuraVetor] * multiplicaV1
          somat += nWCpf[procuraVetor]
          procuraVetor++
        }
        resto = somat%11
        se (resto < 2){
 		      se (cpf[9] == 0){
            //primeiro teste validador POSITIVO
 	      } senao {
 			      //primeiro teste validador NEGATIVO
 		      }
    	  } senao {
        resto = 11 - resto	
    		  se (resto == cpf[9]){
    		    //primeiro teste validador POSITIVO
    	  } senao {
    		    //primeiro teste validador NEGATIVO
    		  }
    	  }
          //reset das vari�veis
          procuraVetor = 0
          somat = 0
          //ler o n�mero
          para (inteiro cont2 = 0; cont2 <= 9; cont2++){
            nWCpf[cont2] = cpf[cont2]              
          }
          //In�cio da valida��o do CPF (2� d�gito)
          para (inteiro multiplicaV2 = 11; multiplicaV2 >=2; multiplicaV2--){
            nWCpf[procuraVetor] = nWCpf[procuraVetor] * multiplicaV2
            somat += nWCpf[procuraVetor]
            procuraVetor++
          }
              resto = somat%11
            limpa()
            linha_codigo()
          se (resto < 2){
 		        se (cpf[10] == 0){
              //segundo teste validador POSITIVO
 			        escreva("\nSeu CPF (",cpf[0],cpf[1],cpf[2],".",cpf[3],cpf[4],cpf[5],".",cpf[6],cpf[7],cpf[8],"-",cpf[9],cpf[10],") foi validado")
 		        }  
            senao {
              //segundo teste validador NEGATIVO
 			        escreva("\nCPF inv�lido")
 		              }                  
    	    } 
          senao {
    		    resto = 11 - resto
    		    se (resto == cpf[10]){
              //segundo teste validador POSITIVO
    		      escreva("\nSeu CPF (",cpf[0],cpf[1],cpf[2],".",cpf[3],cpf[4],cpf[5],".",cpf[6],cpf[7],cpf[8],"-",cpf[9],cpf[10],") foi validado")	
    	      } 
            senao{
              //segundo teste validador NEGATIVO
    		      escreva("\nCPF inv�lido")
    		      }
    	      }
          linha_codigo()
      }  
  }