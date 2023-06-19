programa

{  
    real consultas, valor_total_consultas=0, valor_total_internacao=0
    inteiro opcao = 0, opcao2, voltar1, voltar2, voltar3, voltar4, voltar5, voltar6, total_consultas=0, quarto=0, internacoes=0, pacientes[20]
    logico quartos[21]
    cadeia nome, telefone, tecla, especialidade, tecla2

    funcao inicio()
    {	

    	   enquanto (opcao != 5)
    	   {
    	   	
	    	   escreva("   HOSPITAL - XPTO    \n ")
	        escreva("-----------------------\n")
	        escreva("1-Consulta Ambulatorial\n")
	        escreva("2-Internação\n")
	        escreva("3-Listar Quartos\n")
	        escreva("4-Faturamento\n")
	        escreva("5-Sair do Programa\n")
	        escreva("------------------------\n")
	        leia(opcao)
	        
	        se(opcao<1 ou opcao>5){
		        limpa()	
		        escreva("Opcão inválida! Digite outra opção no menu abaixo: \n\n")
		        
	        }
	        
	        escolha(opcao)
	        {     
		        caso 1:
		        	consultaAmbulatorial()
		        pare
		            
		        caso 2:
		      	internacao()
		        pare
		            
		        caso 3: 
		        	limpa()
	           	escreva("Lista de quartos disponíveis: ")
	           	escreva("\n\n")	
	           	exibeQuartosDisponiveis()
			   pare
			   
		        caso 4: 
		        	faturamento()
		        pare
		         
		            
		        caso 5:
		        	encerra()
		        pare
	        }
	        
    	        }
    	        
             }

    funcao consultaAmbulatorial()
    {
    	
	    limpa()
	    escreva("Digite o nome do paciente:")
	    leia(nome)
	    escreva("Digite o telefone do paciente:")
	    leia(telefone)
	    escreva("Digite o a especialidade da consulta: 1-Pediatria ou 2-Outra especialidade.\n")
	    leia(opcao2)
      	
	    escolha(opcao2)
	    {
	            
		    caso 1: 
		    		  escreva("\nO valor da consulta é de R$ 150,00.\n\n" )
		            total_consultas++
		            valor_total_consultas += 150.0
		            //inicio()
		            escreva("\nPressione: 1 - Voltar ao menu inicial. \t Ou \t 2 - Exibir o faturamento atual.\n")
		            leia(voltar1)
		            escolha(voltar1) 
		            {
					caso 1: 
						limpa()
					pare
					caso 2: 
						limpa()
						faturamento()
					pare
		            }
		    pare
		    caso 2: 
		            escreva("\nO valor da consulta é de R$ 120,00.\n" )
		            total_consultas++
		            valor_total_consultas += 120
		            escreva("\nPressione: 1 - Voltar ao menu inicial. \t Ou \t 2 - Exibir o faturamento atual.\n")
		            leia(voltar2)
		            escolha(voltar2) 
		            {
					caso 1:
						limpa()	
					pare
					caso 2: 
						limpa()
						faturamento()
					pare
		            }
		    pare
	     }
     
     }

    funcao internacao()
    {
    	
       escreva("Nome do paciente: \n")
       leia(nome)
       escreva("Telefone do paciente: \n")
       leia(telefone)
       escreva("Selecione um quarto para internação: \n\n")
       leia(quarto)

       verificaQuarto()

       escreva("\nPressione: 1 - Voltar ao menu inicial. \t Ou \t 2 - Exibir o faturamento atual.\n")
	  leia(voltar3)
	  escolha(voltar3) {
	        caso 1: 
	        	limpa()
	        	//inicio()
	        pare
	        caso 2: 
	        	limpa()
	        	faturamento()
		   pare
	               
	  }
    }

    funcao verificaQuarto()
    {

		enquanto (quartos[quarto] == verdadeiro)
		{
			escreva("Quarto ocupado, selecione outro para internação: \n\n")
       		leia(quarto)
		}

		quartos[quarto] = verdadeiro
		valor_total_internacao += 500
		internacoes++
		escreva("Quarto reservado com sucesso!\n\n")
		                    
    }

    funcao exibeQuartosDisponiveis()
    {
    	
		para (inteiro i=1; i<=20 ; i++)
		{
		    se(quartos[i] == falso)
		    {
		    escreva("Quarto ", i," disponível. \n")
		    }senao
		    {
		    	escreva("Quarto ", i," indisponível. \n")
		    }
		}
	     escreva("\nPressione: 1 - Voltar ao menu inicial. \t Ou \t 2 - Exibir o faturamento atual.\n")
	     leia(voltar5)
	     escolha(voltar5) 
	     {
	      caso 1: 
		      limpa()
	      pare
	      caso 2: 
		      limpa()
		      faturamento()
	      pare
	     }
     }

    funcao faturamento()
    {
		limpa()     
		escreva("Faturamento:")
		escreva("\n")
		escreva("Numero de consultas realizadas:", total_consultas, "\n") 
		escreva("Numero de internações realizadas:", internacoes, "\n")
		escreva("Total faturado de consultas:",  valor_total_consultas, "\n")
		escreva("Total faturado de internações:",  valor_total_internacao, "\n")
		escreva("Total faturado de consultas + internações:", (valor_total_consultas + valor_total_internacao), "\n \n")
		
		escreva("\nPressione 1 para voltar ao menu inicial ou 2 para finalizar o programa.\n")
		leia(voltar6)
		escolha(voltar6)
		{
		   caso 1: 
		        limpa()	        
		   pare
		   caso 2: 
		   	limpa()
		   	encerra()
		   pare
		}

    }

    funcao encerra()
    {
    		opcao = 5
	    	limpa()
	    	escreva("Atendimento finalizado.\n\n")
    }

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9; 
 * @DOBRAMENTO-CODIGO = [8, 61, 114, 141, 157, 184, 210];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opcao, 5, 12, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */