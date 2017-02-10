
--[[
    the original text in "test_for_io.lua" file:
        this is a test line - 1
        this is a test line - 2
]]


-- simple mode
file = io.open("test_for_io.lua", "r")
print(type(file))  -- userdata
io.input(file)
print(io.read())  -- this is a test line - 1


readLine = io.lines()
line = readLine()
while line ~= nil do
    print(line)
    line = readLine()
end
-- this is a test line - 1
-- this is a test line - 2

io.close(file)


file = io.open("test_for_io.lua", "a")
io.output(file)
io.write("  new text in end of the file")
io.close(file)



-- full mode
file = io.open("test_for_io.lua", "r")
print(file:read())  -- this is a test line - 1
file:close()

file = io.open("test_for_io.lua", "a")
file:write("  test")
file:close()


for line in io.lines("test_for_io.lua") do
    print(line)
end
-- this is a test line - 1
-- this is a test line - 2  new text in end of the file  test


file = io.open("test_for_io.lua", "r")
file:seek("end", -10)
print(file:read("*a"))  -- file  test
file:close()
