x = 10
local i = 1        -- local to the chunk
    
while i<=x do
    local x = i*2    -- local to the while body
    print(x)         --> 2, 4, 6, 8, ...
    i = i + 1
end