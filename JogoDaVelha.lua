posicao = 0
contJogadasdisponiveis = 9
jogador1 = ""
--------------------------------------------------------------------------------------------

tabuleiro = {{" "," "," "},
			{" "," "," "},
			{" "," "," "}}

jogadasDisponiveis = {{"1","2","3"},
					 {"4","5","6"},
					 {"7","8","9"}}

--------------------------------------------------------------------------------------------

function mostrarJogo()
return( "\n	INICIO:\n"..
		"\n       "..tabuleiro[1][1] .. "|"..tabuleiro[1][2]..	"|" ..tabuleiro[1][3]..
		"\n       ".."------" ..
		"\n       "..tabuleiro[2][1] .. "|"..tabuleiro[2][2]..	"|" ..tabuleiro[2][3]..
		"\n       ".."------" ..
		"\n       "..tabuleiro[3][1] .. "|"..tabuleiro[3][2]..	"|" ..tabuleiro[3][3].. "\n\n")
end

--------------------------------------------------------------------------------------------


function mostrarJogadasDisponiveis()
return(
		"\nPosições Disponíveis: 0"..contJogadasdisponiveis .. "\n" ..
		"\n       "..jogadasDisponiveis[1][1] .. "|"..jogadasDisponiveis[1][2]..	"|" ..jogadasDisponiveis[1][3]..
		"\n       ".."------" ..
		"\n       "..jogadasDisponiveis[2][1] .. "|"..jogadasDisponiveis[2][2]..	"|" ..jogadasDisponiveis[2][3]..
		"\n       ".."------" ..
		"\n       "..jogadasDisponiveis[3][1] .. "|"..jogadasDisponiveis[3][2]..	"|" ..jogadasDisponiveis[3][3])
end

--------------------------------------------------------------------------------------------

function verificarJogadaValida(n)


if (contJogadasdisponiveis >0) then
	if((n >= 1) and (n <= 9)) then
		contJogadasdisponiveis = contJogadasdisponiveis -1
		return true
	else
	print ("ESCOLHA UMA OPÇÃO VÁLIDA!!")
		print (executarJogo())
	end

end

end

--------------------------------------------------------------------------------------------


function alterarPainel(posicao)

if(posicao == 1) then
tabuleiro[1][1] = jogador
jogadasDisponiveis[1][1] = " "

print (executarJogo())

elseif (posicao==2 ) then
tabuleiro[1][2]= jogador
jogadasDisponiveis[1][2] = " "

print (executarJogo())

elseif (posicao==3 ) then
tabuleiro[1][3]= jogador
jogadasDisponiveis[1][3] = " "
print (executarJogo())

elseif (posicao==4 ) then
tabuleiro[2][1]= jogador
jogadasDisponiveis[2][1] = " "
print (executarJogo())

elseif (posicao==5 ) then
tabuleiro[2][2]= jogador
jogadasDisponiveis[2][2] = " "
print (executarJogo())

elseif (posicao==6 ) then
tabuleiro[2][3]= jogador
jogadasDisponiveis[2][3] = " "
print (executarJogo())

elseif (posicao==7 ) then
tabuleiro[3][1]= jogador
jogadasDisponiveis[3][1] = " "
print (executarJogo())

elseif (posicao==8 ) then
tabuleiro[3][2]= jogador
jogadasDisponiveis[3][2] = " "
print (executarJogo())

elseif (posicao==9 ) then
tabuleiro[3][3]= jogador
jogadasDisponiveis[3][3] = " "
print (executarJogo())

end

end

--------------------------------------------------------------------------------------------




function executarJogo()

if(contJogadasdisponiveis % 2 == 0) then
	print (mostrarJogo())
	print ("Escolha a posição: \n ")
	print (mostrarJogadasDisponiveis())
	posicao = io.read ("*number")
	jogador = "O"

	if(verificarJogadaValida(posicao)== true) then
		print (alterarPainel(posicao))

	else
		print (verificarJogadaValida(posicao))
	end
else
	print (mostrarJogo())
		print ("Escolha a posição: \n ")
	print (mostrarJogadasDisponiveis())
	posicao = io.read ("*number")
	jogador = "X"

	if(verificarJogadaValida(posicao)== true)then
		print (alterarPainel(posicao))

	else
		print (verificarJogadaValida(posicao))
	end
end
end



print (executarJogo())

--------------------------------------------------------------------------------------------

function vencedor(tabuleiro)

if(tabuleiro[1][1] == "X" and tabuleiro[1][2] == "X" and tabuleiro[1][3] == "X") then

return ("venceu".. tabuleiro[1][1])
else
 print (alterarPainel())

end

end




