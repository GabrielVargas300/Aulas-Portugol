programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Tipos --> type
	funcao vazio linha_codigo(){
		escreva("==========================================================\n")
		} 
  funcao inicio() {
    inteiro cpf1, cpf2, cpf3, cpf4, cpf5, cpf6, cpf7, cpf8, cpf9, cpf10, cpf11
    inteiro ncpf1, ncpf2, ncpf3, ncpf4, ncpf5, ncpf6, ncpf7, ncpf8, ncpf9,ncpf10
    inteiro somat, resto
    cadeia cpf
    caracter digito
	linha_codigo()
	//coleta dos dí­gitos
    escreva("Digite o seu CPF (apenas números): ")
    leia(cpf)
    digito = txt.obter_caracter(cpf,0)
    cpf1 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,1)
    cpf2 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,2)
    cpf3 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,3)
    cpf4 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,4)
    cpf5 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,5)
    cpf6 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,6)
    cpf7 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,7)
    cpf8 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,8)
    cpf9 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,9)
    cpf10 = type.caracter_para_inteiro(digito)
    digito = txt.obter_caracter(cpf,10)
    cpf11 = type.caracter_para_inteiro(digito)
    //primeira validação 
    ncpf1 = cpf1*10
    ncpf2 = cpf2*9
    ncpf3 = cpf3*8
    ncpf4 = cpf4*7
    ncpf5 = cpf5*6
    ncpf6 = cpf6*5
    ncpf7 = cpf7*4
    ncpf8 = cpf8*3
    ncpf9 = cpf9*2	
    somat = ncpf1 + ncpf2 + ncpf3 + ncpf4 + ncpf5 + ncpf6 + ncpf7 + ncpf8 + ncpf9
    resto = somat%11
    //primeiro número 
    linha_codigo()
    se (resto < 2){
 		se (cpf10 == 0){
 			//primeiro número válido
 			limpa()
 		} senao {
 			//nn validado
 			limpa()
 		}
    	}senao {
    		resto = 11 - resto	
    		se (resto == cpf10){
    		//primeiro número válido
    		limpa()	
    	} senao {
    		//nn validado
    		limpa()
    		}
    	}
      linha_codigo()
    	//segunda validação
    ncpf1 = cpf1*11
    ncpf2 = cpf2*10
    ncpf3 = cpf3*9
    ncpf4 = cpf4*8
    ncpf5 = cpf5*7
    ncpf6 = cpf6*6
    ncpf7 = cpf7*5
    ncpf8 = cpf8*4
    ncpf9 = cpf9*3
    ncpf10 = cpf10*2
    somat = ncpf1 + ncpf2 + ncpf3 + ncpf4 + ncpf5 + ncpf6 + ncpf7 + ncpf8 + ncpf9 + ncpf10
    resto = somat%11
    limpa()
    linha_codigo()
    se (resto < 2){
 		se (cpf11 == 0){
 			escreva("\nSeja bem vindo(a) funcionário(a) (",cpf1,cpf2,cpf3,".",cpf4,cpf5,cpf6,".",cpf7,cpf8,cpf9,"-",cpf10,cpf11,")\n\n")
 		} senao {
 			escreva("\nLogin não encontrado\n\n")
 		}
    	}senao {
    		resto = 11 - resto	
    		se (resto == cpf11){
    		escreva("\nSeja bem vindo(a) funcionário(a) (",cpf1,cpf2,cpf3,".",cpf4,cpf5,cpf6,".",cpf7,cpf8,cpf9,"-",cpf10,cpf11,")\n\n")	
    	} senao {
    		escreva("\nLogin não encontrado\n\n")
    		}
    	}
      linha_codigo()
  }
}