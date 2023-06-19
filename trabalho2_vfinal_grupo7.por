programa
{
	cadeia reservas[10][12]
     inteiro i, j, opcao, fila, cadeira
	
    funcao inicio()
    {
        

        para(i=0; i < 10; i++){
        para(j=0; j < 12; j++){
        reservas[i][j]="0"

        }
        
        }
        faca {

            escreva("     CINEMA ESTAÇÃO     ")
            escreva("\n")
            escreva("---------------------------\n")
            escreva("1 - Fazer reserva.\n")
            escreva("2 - Listar acentos.\n")
            escreva("0 - Sair.\n")
            escreva("----------------------------\n")
            leia(opcao)

            escolha(opcao){
            caso 0:
                escreva("Obrigado pela preferência!\n")
            pare

            caso 1:
                escreva("Digite o número da fila: ")
                leia(fila)
                escreva("Digite o número da cadeira: ")
                leia(cadeira)

                i = fila - 1
                j = cadeira - 1
            se (reservas[i][j] != "0"){
                    escreva("\n\nCadeira já reservada, escolha outra.\n")
                   
            } senao {
                
               reservas[i][j] = "1"
                escreva("\n\nCadeira reservada com sucesso!\n\n")
                
            }
            
            imprimir()
            escreva("\n\n")
            pare

            caso 2:
            		
            		escreva("------Disponibilidade de acentos------\n")
            		
       			imprimir()
       			escreva("--------------------------------------\n")
       			escreva("\n\n")
				pare

		caso contrario:
          	  escreva("Opção inválida!\n")
       		}

       		} enquanto (opcao != 0)
       		
    		     }

    funcao imprimir()
   
   {

    			para(inteiro i=0; i < 10; i++){
    		     para(inteiro j=0; j < 12; j++){
    			escreva(reservas[i][j], " ")
			
		} escreva("\n")

		}
    			

    		}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1898; 
 * @DOBRAMENTO-CODIGO = [5, 71];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */