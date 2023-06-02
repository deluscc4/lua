--[[
======================
/
/ ENDERMAN
/ Uma criatura que se teletransporta e pega blocos.
/
/ Som:
/
/ Atributos:
/   Ataque: ###
/   Defesa: ###
======================
]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")
os.execute("cls")

-- Criatura
local monsterName = "ENDERMAN"
local description = "Uma criatura que se teletransporta e pega blocos."
local emoji = "➖"
local sound = "Procure pelo olho!"
local item = "Ender Pearl"

-- Atributos
local attackAttribute = 5
local defenseAttribute = 3
local lifeAttribute = 5
local speedAttribute = 10
local intelAttribute = 6

-- Função que recebe um atributo e retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "◻️"
    local emptyChar = "◼️"
    local result = ""

    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

-- Cartão
print("================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji favorito: " .. emoji)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(intelAttribute))
print("| ")
print("================================")