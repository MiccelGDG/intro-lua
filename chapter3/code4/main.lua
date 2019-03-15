--Programma sul funzionamento delle co routine

--100 secondi
local timer = 3
local utility = require("utility")
local numeroCattivo = 3

function printTimer()
	if(utility.getos() == "unknown") then
		os.execute("cls")
	else
		os.execute("clear")
	end
	print("Mancano "..tostring(timer).." secondi")
end

function checkBadNumber(i)
	return i == numeroCattivo
end



function main()
	repeat
		printTimer()
		utility.wait(1)
		timer = timer - 1
	until timer == 0

	for i = 1, 10 do
		print("Numero Stampato: "..tostring(i))
		if checkBadNumber(i) then
			print("Trovato il numero cattivo")
			break;
		end
		utility.wait(1)
	end
end

main()