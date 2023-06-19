programa
{

   /* 2) Fazer um programa para um banco que deverá ter quatro usuários e senhas
cadastrados em um vetor ou matriz. Quando executar o programa deverá pedir o
nome do usuário e senha cadastrados, caso não exista deverá encerrar o
programa, caso o usuário esteja cadastrado deverá ser exibida a mensagem de
boas vindas e um menu com as seguintes opções:
1 - Depositar
2 - Sacar
3 - Saldo
4 - Sair

*/
	real totalsaldo=0, valorsaque=0
	
	funcao logico usuario_pode_logar(cadeia param_usuario, cadeia param_senha, cadeia matriz[][]){
		para(inteiro linha=0; linha < 5; linha++){
			se(matriz[linha][0] == param_usuario e matriz[linha][1] == param_senha)
				retorne verdadeiro
			
	}
		retorne falso
	}

	funcao deposito() {
		escreva("Digite o quanto deseja depositar: \n")
		leia(totalsaldo)
		escreva("Depósito feito com sucesso")
		menu()
	}

	funcao saque() {
		escreva("Digite o valor do saque: \n")
		leia(valorsaque)
		totalsaldo -= valorsaque
			se (valorsaque > totalsaldo)
			escreva("Saque negado!")
			
			senao
		escreva("Saque efetuado com sucesso")
		menu()
	}

	funcao saldo() {	
		escreva("Seu saldo é de:",totalsaldo)
		menu()	
	}
			
	funcao inicio()
	{
		cadeia matriz[4][2] = {
							//usuario, senha
							
							{"a","111"},
							{"b", "222"},
							{"c", "333"},
							{"d", "444"}
					
						}
						
		cadeia usuario = "", senha = ""
		logico acessoliberado = falso

		escreva("Digite seu usuario: ")
		leia(usuario)
		escreva("Digite sua senha: ")
		leia(senha)


		acessoliberado = usuario_pode_logar(usuario, senha, matriz)

		se(acessoliberado)
		menu()

		senao
		escreva("Acesso negado")
	}

	funcao menu() {

	inteiro opcao
	
        escreva("\n   Banco dos ricos   \n ")
        escreva("-----------------------\n")
        escreva("1-Depositar\n")
        escreva("2-Sacar\n")
        escreva("3-Saldo\n")
        escreva("4-Sair\n")
        
        escreva("------------------------\n")
        leia(opcao)
        
        se(opcao>4 ou opcao<1){escreva("Opcão inválida!")}
        escolha(opcao)
        {     
            caso 1:
            deposito()
            pare
            
            caso 2:
            saque()
            pare
            
            caso 3:	
            saldo()
		  pare

		  
		  caso contrario: pare
	
     }
	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {totalsaldo, 15, 6, 10}-{valorsaque, 15, 20, 10}-{matriz, 52, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */