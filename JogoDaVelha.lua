jogador = ""
jogador1= ""
jogador2= ""
placarX=0
placarO=0
placarEmpate=0
posicao = 0
contJogadasdisponiveis = 9


----------------------------------------------------------------------------------------------------------------------------------
tabuleiro = {	{" "," "," "},
		{" "," "," "},
		{" "," "," "}}
----------------------------------------------------------------------------------------------------------------------------------

jogadasDisponiveis = {   {"1","2","3"},
			 {"4","5","6"},
			 {"7","8","9"}}

----------------------------------------------------------------------------------------------------------------------------------

function exibirJogo()

	print(  "\nINICIO:\n"..
		" \n"..tabuleiro[1][1] .."|"..tabuleiro[1][2].."|" ..tabuleiro[1][3]..
		" \n".."------" ..
		" \n"..tabuleiro[2][1] .."|"..tabuleiro[2][2].."|" ..tabuleiro[2][3]..
		" \n".."------" ..
		" \n"..tabuleiro[3][1] .."|"..tabuleiro[3][2].."|" ..tabuleiro[3][3].. "\n\n")


end

----------------------------------------------------------------------------------------------------------------------------------

function mostrarJogadasDisponiveis()

	print(	"\nPosi��es Restantes: 0"..contJogadasdisponiveis .. "\n" ..
		"\n"..jogadasDisponiveis[1][1] .. "|"..jogadasDisponiveis[1][2].."|" ..jogadasDisponiveis[1][3]..
		"\n".."------" ..
		"\n"..jogadasDisponiveis[2][1] .. "|"..jogadasDisponiveis[2][2].."|" ..jogadasDisponiveis[2][3]..
		"\n".."------" ..
		"\n"..jogadasDisponiveis[3][1] .. "|"..jogadasDisponiveis[3][2].."|" ..jogadasDisponiveis[3][3])

end

----------------------------------------------------------------------------------------------------------------------------------


function escolherElemento()

	print ("Escolha o Elemento para o jogador ".. jogador1)


	while (true) do

		print ("\nEscolha 1 para 'X'\nEscolha 2 para 'O'")

			n=io.read("*number")
		  	io.read()

		if(type(n)=="number") then

			if(n == 1)then
			jogador = "X"
			break

		elseif (n == 2) then
			jogador="O"
			break
			end

		else
		print("Inv�lido")

		end
              end

	iniciarJogo()
       end

----------------------------------------------------------------------------------------------------------------------------------

function escolherNomes()

		print ("Digite Seu nome do Jogador 1")
		jogador1 = io.read()

		print ("Digite Seu nome do Jogador 2")
		jogador2 = io.read()

		escolherElemento()

	end


----------------------------------------------------------------------------------------------------------------------------------


function iniciarJogo()

	print(exibirJogo())
	print(mostrarJogadasDisponiveis())
	posicao=0

	while(true)do

		print ("Voc� joga com '".. jogador .. "' escolha uma posi��o no tabuleiro:")

		posicao = io.read("*number")
		io.read()

		if(type(posicao)=="number") then


			if (posicao >= 1 and posicao <= 9) then
				alterarPainel(posicao)

			else
			print ("\n\n\nESCOLHA UMA OP��O V�LIDA!\n\n\n")
			print (iniciarJogo())

		      end

		else
		   print(iniciarJogo())
		end

		posicao=0
		return false
	  end
       end

----------------------------------------------------------------------------------------------------------------------------------

function alterarPainel(posicao)

		if(posicao == 1 and tabuleiro[1][1] == " ") then
			tabuleiro[1][1] = jogador
			jogadasDisponiveis[1][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end

		elseif (posicao==2 and tabuleiro[1][2]== " " ) then
			tabuleiro[1][2]= jogador
			jogadasDisponiveis[1][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end

		elseif (posicao==3 and tabuleiro[1][3]==" " ) then
			tabuleiro[1][3]= jogador
			jogadasDisponiveis[1][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==4 and tabuleiro[2][1]==" "  ) then
			tabuleiro[2][1]= jogador
			jogadasDisponiveis[2][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==5 and tabuleiro[2][2]==" " ) then
			tabuleiro[2][2]= jogador
			jogadasDisponiveis[2][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==6 and tabuleiro[2][3]==" " ) then
			tabuleiro[2][3]= jogador
			jogadasDisponiveis[2][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==7 and tabuleiro[3][1]==" " ) then
			tabuleiro[3][1]= jogador
			jogadasDisponiveis[3][1] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if(verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()
			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==8 and tabuleiro[3][2]==" "  ) then
			tabuleiro[3][2]= jogador
			jogadasDisponiveis[3][2] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		elseif (posicao==9 and tabuleiro[3][3]==" "  ) then
			tabuleiro[3][3]= jogador
			jogadasDisponiveis[3][3] = " "
			contJogadasdisponiveis = contJogadasdisponiveis -1

			if( verificarVitoria() == true) then
				print ("\n\n\nO campeao � ".. jogador.. "\n\n\n")

				alterarPlacar(jogador)
				exibirJogo()
				exibirPlacar()
				reiniciarJogo()

			else
				mudarJogador()
				iniciarJogo()
			end


		else

		print ("\n\n\nESCOLHA UMA OP��O V�LIDA!\n\n\n")
		iniciarJogo()

		end
              end

----------------------------------------------------------------------------------------------------------------------------------


function mudarJogador()
	if(jogador=="X") then
		jogador="O"
	else
		jogador="X"
	end
      end

----------------------------------------------------------------------------------------------------------------------------------


function verificarVitoria()

		if(contJogadasdisponiveis > 0)then

			if(tabuleiro[1][1] ~= " " and tabuleiro[1][1]==tabuleiro[1][2] and tabuleiro[1][2] == tabuleiro[1][3]) then
				return true

			elseif(tabuleiro[2][1] ~= " " and tabuleiro[2][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[2][3]) then
				return true

			elseif(tabuleiro[3][1] ~= " " and tabuleiro[3][1] == tabuleiro[3][2] and tabuleiro[3][2] == tabuleiro[3][3]) then
				return true

			elseif(tabuleiro[1][1] ~= " " and tabuleiro[1][1] == tabuleiro[2][1] and tabuleiro[2][1] == tabuleiro[3][1]) then
				return true

			elseif( tabuleiro[1][2] ~= " " and tabuleiro[1][2] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][2]) then
				return true

			elseif(tabuleiro[1][3] ~= " " and  tabuleiro[1][3] == tabuleiro[2][3] and tabuleiro[2][3] == tabuleiro[3][3]) then
				return true

			elseif(tabuleiro[1][1] ~= " " and tabuleiro[1][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[3][3]) then
				return true

			elseif(tabuleiro[3][1] ~= " " and tabuleiro[3][1] == tabuleiro[2][2] and tabuleiro[2][2] == tabuleiro[1][3]) then

				return true
			end

		else
			print ("Jogo empatado")
			reiniciarJogo()

		end
             end

----------------------------------------------------------------------------------------------------------------------------------

function reiniciarJogo()
	verifica=0

	while(true) do

		print("Deseja reiniciar o Jogo: \n1)Sim \n2)N�o")

		verifica=io.read("*number")
		io.read()

		if(type(verifica)=="number") then

			if(verifica==1) then

				posicao = 0
				contJogadasdisponiveis = 9

				tabuleiro = {	{" "," "," "},
						{" "," "," "},
						{" "," "," "}}

				jogadasDisponiveis = {	{"1","2","3"},
							{"4","5","6"},
							{"7","8","9"}}

				iniciarJogo()


			elseif(verifica==2) then

				print("FIM...")
				exibirPlacar()
				return false
			end

		else
			print ("\n\n\nESCOLHA UMA OP��O V�LIDA!\n\n\n")

		end

		verifica=0

	end
      end


----------------------------------------------------------------------------------------------------------------------------------


function alterarPlacar(jogador)

	if(jogador == "X") then
		placarX = placarX +1

	elseif (jogador == "O")then
		placarO = placarO +1

	end
      end

----------------------------------------------------------------------------------------------------------------------------------

function exibirPlacar()

	print ("Placar de 'X' = " .. placarX ..
		"\nPlacar de 'O'= " .. placarO)

	end

	print(escolherNomes())
