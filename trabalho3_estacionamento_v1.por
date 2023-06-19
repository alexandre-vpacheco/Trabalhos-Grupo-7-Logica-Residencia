programa

{  
	
/*1) Algoritmo para gerenciamento de vagas de estacionamento. O
estacionamento possui trinta vagas. Deverá ser criado um menu com as seguintes
opções:
----------------------------------
1-Entrada de Veículo
2-Saída de Veículo
3-Listar vagas
4-Sair do programa
----------------------------------*/
		
		logico vagas[31]
		inteiro opcao=0, vaga=0, voltar
		cadeia placa[31], pl
	
	     funcao inicio()

	{
	enquanto (opcao != 4)
    	   {
    	   	
	    	   escreva("ESTACIONAMENTO SERRATEC")
	    	   escreva("\n")
	        escreva("-----------------------\n")
	        escreva("1-Entrada de veículo.\n")
	        escreva("2-Saída de veículo\n")
	        escreva("3-Listar Vagas.\n")
	        escreva("4-Sair do programa.\n")
	        
	        escreva("------------------------\n")
	        leia(opcao)
	        
	        se(opcao<1 ou opcao>4){
		        limpa()	
		        escreva("Opcão inválida! Digite outra opção no menu abaixo: \n\n")
		        
	        }
	        
	        escolha(opcao)
	        {     
		        caso 1:
		        escreva("Escreva a placa: ")
                  leia(pl)
		        entraVagas()
		        pare
		            
		        caso 2:
		      	saiVagas()
		        pare
		            
		        caso 3: 
		        	limpa()
	           	escreva("Lista de vagas disponíveis: ")
	           	escreva("\n\n")	
	           	listaVagas()
			   pare
           
		        caso 4:
		        	encerra()
		        pare
	        }
	        
    	        }
	}

/*(1)*/	funcao entraVagas()

          {
       
          escreva("Selecione uma vaga: ")
          leia(vaga)

          se(vaga>=1 e vaga<=30)

          {
          	
          verificaVagas()
          
          }
          senao
          {
            escreva("Vaga inválida! Digite outro número. \n\n")
            entraVagas()  	
          }

          }

/*(1.1)*/ funcao verificaVagas()

          {
          	enquanto (vagas[vaga] == verdadeiro)
		{
			escreva("\nVaga ocupada, selecione outra: \n\n")
       		leia(vaga)
		}

		vagas[vaga] = verdadeiro
		placa[vaga]=pl
		escreva("\nVaga reservada com sucesso!\n\n")
          }     

/*(2)*/   funcao saiVagas()
          {

 		limpa()
		escreva("Selecione uma vaga para desocupar: \n\n")
		 
          leia(vaga)
 
          se(vagas[vaga] == verdadeiro)
          se(vaga>=1 e vaga<=30)

          {
           	vagas[vaga] = falso 
		     escreva("Vaga liberada!\n\n")

		     listaVagas()
   
          }
	
          senao
          {
             escreva("Vaga inválida! Digite outro número. \n\n")
             saiVagas()
          }
                   
          }    

/*(3)*/   funcao listaVagas()

		{

		limpa()	
		para (inteiro i=1; i<=30 ; i++)
		
		 {
		 se(vagas[i] == falso)
		    
		 {
		 escreva("Vaga ", i," disponível. \n")
		 }
		    
		 senao
		 {
		     
		 escreva("Vaga ", i, " reservada para: ", placa[i] )
		    	
		 escreva("\n")
		    	
		 }
		    	
		 }
		
	      escreva("\nPressione: 1 - Voltar ao menu inicial.")
	      leia(voltar)
	      escolha(voltar) 
	      {
	      caso 1: 
		      limpa()
		      inicio()
	      pare
	      
	      }
	     
		 }

/*(4)*/   funcao encerra()

		{
			opcao = 4
	    	     limpa()  
		}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 21; 
 * @DOBRAMENTO-CODIGO = [18, 68, 90, 104, 131, 169];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */