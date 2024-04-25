programa {
  inclua biblioteca Matematica --> mat
  inclua biblioteca Texto --> txt
  inclua biblioteca Tipos --> type

  funcao vazio linha_codigo(){
		escreva("==========================================================\n")
		} 

  funcao ferias(){
    inteiro num_faltas = 0, faltas [12], mFerias, faltas_jus_ano, faltas_jus
    real salar, desconto

    escreva("\nEsse é um código para calcular o seu tempo de férias e o desconto das férias\n\n")
    
    escreva("\nQual o mês desejado de férias: ")
    leia(mFerias)
    limpa()

    // Conta o numero total de faltas durante o ano e do mes que o usuario diz que tem
    para(inteiro x = 0; x < 12; x++){
      escreva("\nQuantas faltas você teve durante o ",x+1,"° mês? ")
      leia(faltas[x])
      num_faltas += faltas[x]
      limpa()
    }

    // Pede que o usuario digite quantas faltas do ano foram justifivadas
    escreva("\nDigite quantas faltas foram justificadas durante o ano: ")
    leia(faltas_jus_ano)
    limpa()

    // Pede que o usuario digite quantas faltas no mês foram justifivadas
    se(faltas_jus_ano != 0){
      escreva("\nDigite quantas faltas foram justificadas no mês desejado para retirar férias: ")
      leia(faltas_jus)
    } senao{
      faltas_jus = 0
    }
    limpa()

    // Desconta as faltas justificadas das faltas totais no mes das ferias
    faltas[mFerias-1] -= faltas_jus

    // Desconta as faltas justificadas dos faltas totais do ano
    num_faltas -= faltas_jus_ano

    // Verifica se tem direito a ferias, se sim, ira calcular o salario
    // Se não, vai falar que não tem direito as ferias
    limpa()
    se(num_faltas < 32){

      // Pergunta o salario
      escreva("\nMuito bem, agora precisamos saber do seu salário: ")
      leia(salar)

      // Calcula quanto vai receber no periodo de ferias
      desconto = (salar/30)*faltas[mFerias-1]
      se(desconto != 0){
        salar -= desconto
      }

      limpa()
      // Mostra quantos dias de ferias tera e o numero de faltas
      se(num_faltas > 23){
        escreva("\nVocê tem direito a 12 dias de férias (faltas = ",num_faltas,")")
      }senao se(num_faltas > 14){
        escreva("\nVocê tem direito a 18 dias de férias (faltas = ",num_faltas,")")
      }senao se(num_faltas > 5){
        escreva("\nVocê tem direito a 24 dias de férias (faltas = ",num_faltas,")")
      }senao{
        escreva("\nVocê pode tirar férias integral (faltas = ",num_faltas,")")
      }

      // Arredonda o salario e mostra quanto o usuario ira receber
      salar = mat.arredondar(salar,2)
      escreva("\nO seu salário nas férias é ",salar)

    }senao{
      escreva("\nVocê não tem direito as férias (faltas = ", num_faltas,")")
    }
  }

  funcao ver_cpf(){
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
        linha_codigo()
        retorne verdadeiro
      } senao {
        escreva("\nLogin não encontrado\n\n")
        linha_codigo()
        retorne falso
      }
        }senao {
          resto = 11 - resto	
          se (resto == cpf11){
          escreva("\nSeja bem vindo(a) funcionário(a) (",cpf1,cpf2,cpf3,".",cpf4,cpf5,cpf6,".",cpf7,cpf8,cpf9,"-",cpf10,cpf11,")\n\n")	
          linha_codigo()
          retorne verdadeiro
        } senao {
          escreva("\nLogin não encontrado\n\n")
          linha_codigo()
          retorne falso
          }
        }
        linha_codigo()
      
  }

  funcao inicio() {
    linha_codigo()
    escreva("Vamos verificar se você é uma pessoa existente.\n")
    se (ver_cpf()){
      ferias()
    }
  }
}
