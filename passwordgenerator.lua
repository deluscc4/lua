-- UTF-8
os.execute("chcp 65001")
os.execute("cls")

local letters = {"a", "b", "c", "A", "B", "C"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"#", "@", ">", "=", "<"}
local characterLists = {
    letters,
    numbers,
    specials
}

print("How many characters for your password?")
local length = io.read("*n")

local password = ""
for i = 1, length, 1 do
    -- Getting the list randomly
    local listIndex = math.random(#characterLists)
    local list = characterLists[listIndex]
    -- Getting character
    local characterIndex = math.random(#list)
    local char = list[characterIndex]
    -- Appending characters
    password = password .. char
end

print("Your password is:")
print(password)
