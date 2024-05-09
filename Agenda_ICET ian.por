programa {
  cadeia agenda_nome_num_ende[5][3]
  //função para adicionar os contatos
  funcao vazio fim(){
        escreva("Obrigado!! o programa irá se encerrar!!")
      }
  funcao adicionar(){
      inteiro numAdd
      escreva("Quantos números deseja adicionar (1-5)?")
      escreva("\nValor: ")
      leia(numAdd)
      para(inteiro c = 0; c != numAdd; c++){
        se (c != 0){
          continuarADD()
        }
            para(inteiro l = 0; l <=3;l++){
                se(l == 0){
                    escreva("Digite o nome a ser inserido: ")
                    leia(agenda_nome_num_ende[c][l])
                  }
                se(l == 1){
                    escreva("Digite o número a ser inserido: ")
                   leia(agenda_nome_num_ende[c][l])
                  }
                se(l == 2){
                    escreva("Digite o endereço a ser inserido: ")
                    leia(agenda_nome_num_ende[c][l])
                  }
              }
      }
      inicio()
    }
    funcao continuarADD(){
        inteiro cont = 0
          limpa()
            escreva("Deseja continuar adicionando?")
            escreva("\n1-Sim")
            escreva("\n2-Não")
            escreva("\nOpção desejada: ")
              leia(cont)
                 se(cont == 2){
                      limpa()
                      inicio()
                    }
    }
    //função para editar os contatos
    funcao editar(){
        inteiro edit
          escreva("Essa é a sua lista atual \n")
            para(inteiro lin = 0; lin != 5; lin++){
                escreva(lin+1,"° Nome: ",agenda_nome_num_ende[lin][0],"/ Num: ",agenda_nome_num_ende[lin][1]," /End: ",agenda_nome_num_ende[lin][2],"\n")
              }
                escreva("Caso não deseje adicionar, Digite 0")
                escreva("\nQual contato deseja editar? ")
                leia(edit)
                se (edit == 0){
                  inicio()
                }
                    para(inteiro l = 0; l != 3;l++){
                        se(l == 0){
                            escreva("Digite o novo nome: ")
                            leia(agenda_nome_num_ende[edit - 1][l])
                        }
                        se(l == 1){
                            escreva("Digite o novo número: ")
                            leia(agenda_nome_num_ende[edit - 1][l])
                        }
                        se(l == 2){
                            escreva("Digite o novo endereço: ")
                            leia(agenda_nome_num_ende[edit - 1][l])
                        }
            }
        inicio()
      }
      //função para apagar os contatos
      funcao apaga(){
        inteiro del
            limpa()
            escreva("Essa é a sua lista atual \n")
            para(inteiro lin = 0; lin != 5; lin++){
                escreva(lin+1,"° Nome: ",agenda_nome_num_ende[lin][0],"/ Num: ",agenda_nome_num_ende[lin][1]," /End: ",agenda_nome_num_ende[lin][2],"\n")
              }

            escreva("Qual contato deseja apagar? ")
            leia(del)
              para(inteiro l = 0; l !=3;l++){
                agenda_nome_num_ende[del - 1][l] = "" 
              }
        inicio()
      } 
      funcao ver_lista(){
        inteiro exit
        limpa()
        para(inteiro lin = 0; lin != 5; lin++){
                escreva(lin+1,"° Nome: ",agenda_nome_num_ende[lin][0],"/ Num: ",agenda_nome_num_ende[lin][1]," /End: ",agenda_nome_num_ende[lin][2],"\n")
            }
        escreva("Deseja sair?\n")
        escreva("1-Sim\n")
        escreva("2-Não\n")
        escreva("Opção: ")
        leia(exit)
        se (exit == 1){
          inicio()
        }
        senao se(exit == 2){
          ver_lista()
        }
      }
    funcao inicio() {
      inteiro opcao = 0
        //escolha das opções
        limpa()
        escreva("Digite qual ação deseja realizar\n")
        escreva("1-Adicionar\n")
        escreva("2-Editar\n")
        escreva("3-Excluir\n")
        escreva("4-Ver a lista\n")
        escreva("5-Sair\n")
        escreva("Opção desejada: ")
        leia(opcao)

        se(opcao == 1){
          adicionar()
        }
        senao se(opcao == 2){
          editar()
        }
        senao se(opcao == 3){
          apaga()
        }
        senao se(opcao == 4){
          ver_lista()
        }
        senao se(opcao == 5){
          fim()
        }
        senao se(opcao > 5 ou opcao < 1){
          limpa()
          escreva("Esse é um dígito inválido, insira novamente!!\n")
          inicio()
        }
    }

      
}
/*Desenvolva um programa que funcione como uma agenda telefônica, permitindo ao usuário adicionar, editar e excluir contatos com nome, telefone , endereço