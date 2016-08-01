local keys = {
  -- reset
  reset =      0,

  -- misc
  bright     = 1,
  dim        = 2,
  underline  = 4,
  blink      = 5,
  reverse    = 7,
  hidden     = 8,

  -- foreground colors
  black     = 30,
  red       = 31,
  green     = 32,
  yellow    = 33,
  blue      = 34,
  magenta   = 35,
  cyan      = 36,
  white     = 37,

  -- background colors
  blackbg   = 40,
  redbg     = 41,
  greenbg   = 42,
  yellowbg  = 43,
  bluebg    = 44,
  magentabg = 45,
  cyanbg    = 46,
  whitebg   = 47
}

keys["3"]="3"

local pairs = require(arg[1] or "_G").pairs
-- "_G" (by default)
-- "rwpairs"
-- pairs("mini.tcopy"(t))


local check = {}

-- allow to use number instead of text
for k,v in pairs(keys) do
	print("write key: ", tostring(v))
	check[tostring(v)] = (check[tostring(v)] or 0) + 1
	keys[tostring(v)] = v
end

for k,v in pairs(check) do
	if v ~= 1 then
		print(k, v)
	end
end

local err = false
local numkeys={"0", "1", "2", "3", "4", "5", "7", "8", "30", "31", "32", "33", "34", "35", "36", "37", "40", "41", "42", "43", "44", "45", "46", "47"}
print(#numkeys.." to check...")
for _i, v in pairs(numkeys) do
	if check[v] ~= 1 then
		print("key "..tostring(v).." done "..tostring(check[v] or 0))
		err=true
	end
end

if err then
	print("something wrong")
	os.exit(1)
end
print("everything ok")
