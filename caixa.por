programa
{
	funcao inicio()
	{
		real saldo = 1000.00
		real valor
		inteiro opcao = 0
    // inicio
		// O programa executa continuamente até o usuário escolher a opção 4 (Sair)
		enquanto (opcao != 4)
		{
			// Exibição do menu de opções
			escreva("\n=== CAIXA ELETRÔNICO ===\n")
			escreva("1. Depositar\n")
			escreva("2. Sacar\n")
			escreva("3. Consultar saldo\n")
			escreva("4. Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			// Processamento da opção escolhida
			escolha (opcao)
			{
				caso 1:
					escreva("Informe o valor para depósito: R$")
					leia(valor)
					
					se (valor > 0)
					{
						saldo = saldo + valor
						escreva("Depósito realizado com sucesso!\n")
					}
					senao
					{
						escreva("Valor inválido para depósito.\n")
					}
					pare

				caso 2:
					escreva("Informe o valor para saque: R$")
					leia(valor)

					// Verifica se o valor é válido e se há saldo suficiente
					se (valor > 0 e valor <= saldo)
					{
						saldo = saldo - valor
						escreva("Saque realizado com sucesso!\n")
					}
					senao se (valor > saldo)
					{
						escreva("Operação não pode ser realizada: Saldo insuficiente.\n")
					}
					senao
					{
						escreva("Valor inválido para saque.\n")
					}
					pare

				caso 3:
					escreva("Seu saldo atual é: R$", saldo, "\n")
					pare

				caso 4:
					escreva("Sessão encerrada. Obrigado por utilizar nosso banco!\n")
					pare

				caso contrario:
					escreva("Opção inválida! Escolha um número de 1 a 4.\n")
					pare
          // pare
			}
		}
	}
}

