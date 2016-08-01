I like lua but there are some things we should not do.

## modify-hash-table-inside-loop-of-it-self

``` lua
local t = {
	a="a",
	b="b",
}

for k,v in pairs(t) do
	t["c"] = v
	print(k,v)
end

-- you will got unpredictible result (depends of the intepretor implementation)
```
