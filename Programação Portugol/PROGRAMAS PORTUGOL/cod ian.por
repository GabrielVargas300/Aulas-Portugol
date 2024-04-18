programa {
  cadeia agenda_nome_num_ende [5][3]

  //função para adicionar os contatos
  funcao adicionar(){
      para(inteiro c = 0; c<=4; c++){
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
    }
    //função para editar os contatos
    funcao editar(){
        inteiro edit
          escreva("Qual contato deseja editar? ")
          leia(edit)
            para(inteiro l = 0; l <=3;l++){
                se(l == 0){
                  escreva("Digite o novo nome: ")
                  leia(agenda_nome_num_ende[edit-1][l])
                }
                se(l == 1){
                   escreva("Digite o novo número: ")
                    leia(agenda_nome_num_ende[edit-1][l])
                }
                se(l == 2){
                    escreva("Digite o novo endereço: ")
                    leia(agenda_nome_num_ende[edit-1][l])
                }
            }
      }
      //função para apagar os contatos
      funcao apaga(){
          inteiro del
            escreva("Qual contato deseja apagar? ")
            leia(del)
              para(inteiro l = 0; l <=3;l++){
              agenda_nome_num_ende[del-1][l] = "" 
              }

      } 
    funcao inicio() {
      inteiro opcao = 0
        //escolha das opções
        escreva("Digite qual ação deseja realizar\n")
        escreva("1-Adicionar\n")
        escreva("2-Editar\n")
        escreva("3-Excluir\n")
        escreva("4-Sair\n")
        escreva("Opção desejada: ")
        leia(opcao)

        escolha(opcao){
          caso 1 :adicionar()
          caso 2 :editar()
          caso 3 :apaga()
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 214; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {agenda_nome_num_ende, 2, 9, 20};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */