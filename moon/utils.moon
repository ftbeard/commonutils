-- utils.moon
export Y, map, foldl, foldl1, intersect, xor, map, fget, isspace, write
--------------------------------------------------------------------------------
-- function composition
debug.setmetatable ->, {
    __call: (...) => func ...
    __mul: (self, g) -> (...) -> self g ...
    __index: (x) => (...) -> self x, ...
}
--------------------------------------------------------------------------------
-- Y combinator
Y = (f using nil) ->
	((x) -> x x) (x) -> f (...) -> (x x) ...
-- example :
-- almost_fac = (f using nil) -> (n) ->
--     if n == 0 then 1 else n * f n - 1
-- fact = Y almost_fac
--------------------------------------------------------------------------------
-- map
map = (f, xs) -> [f(x) for x in *xs]
--------------------------------------------------------------------------------
-- foldl
foldl = (f, acc, xs) ->
    for x in *xs
        acc = f acc, x
    acc
-- foldl1
foldl1 = (f, xs) ->
    acc = xs[1]
    for i = 2, #xs
        acc = f acc, xs[i]
    acc
--------------------------------------------------------------------------------
-- intersect
intersect = (a,b) ->
    x = false
    x or= e == f for _,e in pairs a for _,f in pairs b
    x
--------------------------------------------------------------------------------
-- xor
xor = (a,b) -> not a == b
--------------------------------------------------------------------------------
-- fget
fget = (s) ->
    s, i = s or s, 0
    geti = () ->
        if s and i <= #s and i >= 1 then s\sub(i,i) else nil
    (
        () ->
            i += 1
            geti!
    ),(
        () ->
            i -= 1
            geti!
    ),(
        () ->
            if i > #s or i < 1 then "out of range" else nil
    )
-- examples
-- get, unget, err = fget str
-- print c for c in fget str
--------------------------------------------------------------------------------
-- ises
isspace = (x) ->
    (x == ' ' or x == '\t' or x == '\n' or x == '\r' or x == 'v')
--------------------------------------------------------------------------------
-- write
-- print formatted text
write = (...) ->
    io.write string.format...
