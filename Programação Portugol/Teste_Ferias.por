programa {
  inclua biblioteca Matematica --> mat
  funcao vazio linha_codigo(){
		escreva("=====================================================================\n")
		}
  funcao inicio() {
    inteiro resev = 0, cont = 0, faltaj, faltajano, mFerias
    inteiro falta[12]
    //falta = faltas(mes) / faltaj = falta justificada no mes/ falta dps da justificada / falta do ano / mês de férias 
    real salar, discont, arresalar

    linha_codigo()
    escreva("\nEsse é um código para calcular o seu tempo de férias e o desconto das férias\n\n")
    enquanto (cont != 12){
    linha_codigo()
    escreva("\nQuantas faltas você teve durante o ",cont+1,"° mês? ")
    leia(falta[cont])
    resev = resev + falta[cont]
    cont++
    linha_codigo()
    limpa()

    }
    linha_codigo()
    escreva("\nQual o mês desejado de férias: ")
    leia(mFerias-1)
    linha_codigo()
    limpa()
    escreva("\nDigite quantas faltas foram justificadas durante o ano: ")
    leia(faltajano)
    linha_codigo()
    limpa()
    se(faltajano != 0){
    linha_codigo()
    escreva("\nDigite quantas faltas foram justificadas no mês desejado para retirar férias: ")
    leia(faltaj)
    linha_codigo()
    } senao{
      faltaj = 0
    }
    falta[mFerias-1] = falta[mFerias-1] - faltaj
    faltajano = resev - faltajano
    escreva("\nMuito bem, agora precisamos saber do seu salário: ")
    leia(salar)
    discont = (salar/30)*falta[mFerias-1]
    se(discont == 0){
    salar = salar*1
    }senao {
      salar = salar - discont
    }
    arresalar = mat.arredondar(salar,2)

    se (faltajano < 6){
      escreva("\nVocê pode tirar férias integral (faltas = ",faltajano,")")
      escreva("\nO seu salário nas férias é ",arresalar)
    }se(faltajano > 5 e faltajano < 15){
      escreva("\nVocê tem direito a 24 dias de férias (faltas = ",faltajano,")")
      escreva("\nO seu salário nas férias é ",arresalar)
    }se (faltajano > 14 e faltajano < 24){
      escreva("\nVocê tem direito a 18 dias de férias (faltas = ",faltajano,")")
      escreva("\nO seu salário nas férias é ",arresalar)
    }se (faltajano > 23 e faltajano <33){
      escreva("\nVocê tem direito a 12 dias de férias (faltas = ",faltajano,")")
      escreva("\nO seu salário nas férias é ",arresalar)
    }se (faltajano > 32){
      escreva("\nVocê não tem direito as férias (faltas = ",faltajano,")")
    }
  }
}