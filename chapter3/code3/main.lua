-- while
local i = 1 
a = {1,3,6,7,8}

-- while valuta se a[i] è true
-- (ricordiamoci che per LUA
-- qualsiasi roba che non sia false o nil, è true) 

while a[i] do
    print(a[i])
    i = i + 1
end