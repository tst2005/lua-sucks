local function clone(t_src, t_dst)
	t_dst = t_dst or {}
        for k,v in pairs(t_src) do
                t_dst[k] = v
        end
        return t_dst
end

local M = {}
M.pairs = function(t)
	return pairs(clone(t))
end
return M
