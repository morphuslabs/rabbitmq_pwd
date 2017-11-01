local sha2 = require('sha2')
local base64 = require('base64')

math.randomseed(os.time())
io.write("Please, inform the password: "); io.flush()

function string.tohex(str)
    return (str:gsub('.', function (c)
        return string.format('%02X', string.byte(c))
    end))
end

local pwd = io.read()
local pwd_hex = string.tohex(pwd)
local salt = math.random(0, math.tointeger(2^31-1))
local salt_hex = string.format("%x", salt)
local pwd_hash = salt_hex .. sha2.hash256(salt_hex .. pwd_hex)
io.write("Your hash is: ")
io.write(base64.encode(pwd_hash))
io.write("\n")
io.flush()