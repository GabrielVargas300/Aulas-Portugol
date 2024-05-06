programa
{
	
//sistema para média de um alunos  
	//maior ou igual 7 está aprovado menor está reprovado
	//fundamental 1 soma duas notas e não reprova se a nota for >= 14,
	//fundamental 2 média >= 7 ,
	//médio soma >= 28,
	//A = fundamental 1 , B fundamenta 2, C = médio 
	//Guardar a média dos alunos num vetor
	//Guardar o nome dos alunos
	//Guardar a sala do aluno
	//Validar para que usuário não digite um valor invalido
	//Imprimir a nota do alunos
	//soma total por aluno em todos os niveis
	real b1 = 0.0, b2 = 0.0, b3 = 0.0, b4 = 0.0
     real media = 0.0, soma = 0.0
     cadeia nomes[3]
     real notas[3]
     inteiro int = 0, not = 0
      
	funcao inicio()
	{
	    
         caracter nivel = 'A'
         cadeia aluno = ""

         escreva("Digite o nome do aluno\n")
         leia(aluno)

	    escreva("\nQual o nível de escolaridade\n")
	    escreva("A = fundamental 1 , B = fundamental 2, C = médio\n")
         leia(nivel)

         nomeAluno(aluno)
         escolaridade(nivel)
        
	}//fim do inicio
	//Apenas para verificar o nivel da escolaridade
	
	funcao escolaridade(caracter n){
		
	    //fundamental 1
         se(n == 'A'){
          fundamental()
          
         //fundamental 2
         
         }senao se(n == 'B'){
          fundamental2()
         }
         
         //ensino médio
         senao{
          medio()
         }
         
	}//fim função escolaridade
		
	funcao fundamental (){
		faca{
         	 escreva("\nInserir a primeira nota\n")
           leia(b1)
           }
          enquanto(b1<0 ou b1>10)
        	
         	faca{
         	 escreva("\nInserir a primeira nota\n")
           leia(b2)
           }
          enquanto(b1<0 ou b1 >10)
         	  
         	 soma = b1 + b2
         	 se(soma >= 14){
         	 	escreva("Aprovado\n")
         	 	escreva("Sua Nota é:"+soma)
         	 }senao{
         	 	escreva("Dependência\n")
         	 	escreva("Sua Nota é:"+soma)
         	 	
         	 }
         	 NotaAluno(soma)
		}//fim da função fundamental
		
	funcao fundamental2 (){
		 
           media= somaBimestre()/4
        	 se(media >= 7){
         	 escreva("Aluno está aprovado\n")
         	 escreva("Sua Nota é:"+media)
           }senao{
         	  escreva("Aluno Dependência\n")
         	  escreva("Sua Nota é:"+media)	
         }NotaAluno(media)  
}//fim da função fundamental2
			
	funcao medio(){
		 
           soma = somaBimestre()
           se(soma >=28){
           	escreva("Aluno aprovado\n")
           	escreva("Sua Nota é:"+soma)
           }senao{
           	escreva("Aluno reprovado\n")
           	escreva("Sua Nota é:"+soma)
        }NotaAluno(soma)
}//fim da função medio
			
	funcao real somaBimestre(){
		 	faca{
         	 escreva("\nInserir a primeira nota\n")
           leia(b1)
           }
          enquanto(b1<0 ou b1>10)
        	
          	faca{
         	 escreva("\nInserir a segunda nota\n")
           leia(b2)
           }
          enquanto(b1<0 ou b1 >10)
         	  
         		faca{
         	 escreva("\nInserir a terceira nota\n")
           leia(b3)
           }
          enquanto(b1<0 ou b1>10)
        	
          	faca{
         	 escreva("\nInserir a quarta nota\n")
           leia(b4)
           }
          enquanto(b1<0 ou b1 >10)
         	  
           real somaMedia = b1+b2+b3+b4
          retorne somaMedia
			}

	funcao nomeAluno(cadeia nome){
		para(inteiro i = 0;i<=2;i++){
			se(nomes[i] == "" e int == i){
				nomes[i] = nome
		     
	  	     }
		}
		int++
	}//fim da função nomeAluno
	
	funcao NotaAluno(real nota){
		para(inteiro n = 0;n<=2;n++){
			se(notas[n] == 0 e not == n){
				notas[n] = nota
		     
	  	     }
		}
		not++
	}//fim da função NotaAluno
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 942; 
 * @DOBRAMENTO-CODIGO = [40, 59, 84, 96, 108, 137, 147];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 18, 12, 5}-{notas, 19, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */