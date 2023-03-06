local t = {
    616410,
    955,
    1075,
    481302,
    974,
    796,
    130910,
    853,
    124,
    29258,
    316,
    218
}
local r2 = 1
local r4 = 100
for i = 1, r4 do
    local r7 = i % 3
    if r7 == 1 then
        r2 = (r2 % 592) * (1337 - i)
    else
        r2 = (r2 * 58) % (1002 + i)
    end
    r2 = r2 + 1
    if i > 60 and t[i - 60] then
        t[i - 60] = t[i - 60] - r2
    end
end
print(string.char(unpack(t)))
