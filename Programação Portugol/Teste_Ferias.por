programa {
  inclua biblioteca Matematica --> mat
  funcao vazio linha_codigo(){
		escreva("=====================================================================\n")
		}
  funcao inicio() {
    inteiro resev = 0, cont = 0, faltaj, faltajano, mFerias
    inteiro falta[12]
    //falta = faltas(mes) / faltaj = falta justificada no mes/ falta dps da justificada / falta do ano / m�s de f�rias 
    real salar, discont, arresalar

    linha_codigo()
    escreva("\nEsse � um c�digo para calcular o seu tempo de f�rias e o desconto das f�rias\n\n")
    enquanto (cont != 12){
    linha_codigo()
    escreva("\nQuantas faltas voc� teve durante o ",cont+1,"� m�s? ")
    leia(falta[cont])
    resev = resev + falta[cont]
    cont++
    linha_codigo()
    limpa()

    }
    linha_codigo()
    escreva("\nQual o m�s desejado de f�rias: ")
    leia(mFerias-1)
    linha_codigo()
    limpa()
    escreva("\nDigite quantas faltas foram justificadas durante o ano: ")
    leia(faltajano)
    linha_codigo()
    limpa()
    se(faltajano != 0){
    linha_codigo()
    escreva("\nDigite quantas faltas foram justificadas no m�s desejado para retirar f�rias: ")
    leia(faltaj)
    linha_codigo()
    } senao{
      faltaj = 0
    }
    falta[mFerias-1] = falta[mFerias-1] - faltaj
    faltajano = resev - faltajano
    escreva("\nMuito bem, agora precisamos saber do seu sal�rio: ")
    leia(salar)
    discont = (salar/30)*falta[mFerias-1]
    se(discont == 0){
    salar = salar*1
    }senao {
      salar = salar - discont
    }
    arresalar = mat.arredondar(salar,2)

    se (faltajano < 6){
      escreva("\nVoc� pode tirar f�rias integral (faltas = ",faltajano,")")
      escreva("\nO seu sal�rio nas f�rias � ",arresalar)
    }se(faltajano > 5 e faltajano < 15){
      escreva("\nVoc� tem direito a 24 dias de f�rias (faltas = ",faltajano,")")
      escreva("\nO seu sal�rio nas f�rias � ",arresalar)
    }se (faltajano > 14 e faltajano < 24){
      escreva("\nVoc� tem direito a 18 dias de f�rias (faltas = ",faltajano,")")
      escreva("\nO seu sal�rio nas f�rias � ",arresalar)
    }se (faltajano > 23 e faltajano <33){
      escreva("\nVoc� tem direito a 12 dias de f�rias (faltas = ",faltajano,")")
      escreva("\nO seu sal�rio nas f�rias � ",arresalar)
    }se (faltajano > 32){
      escreva("\nVoc� n�o tem direito as f�rias (faltas = ",faltajano,")")
    }
  }
}