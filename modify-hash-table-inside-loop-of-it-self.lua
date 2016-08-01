local t = {
        a="a",
        b="b",
}

for k,v in pairs(t) do
        t["c"] = v
        print(k,v)
end

