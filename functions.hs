{-| 
  Calling functions
  * is a function that takes two numbers and multiplies them. It's arguments are
    sandwiched around it, so its called an infix function.
  Most functions are 'prefix' functions, which means the function name comes
  first, like so: foo param1 param2 ...
-}
-- 1 + 2       -- infix function
-- succ 8      -- postfix function
-- div 10 5    -- postfix function
-- 10 `div` 5  -- convert a two-paramter postfix to infix with ``

-- parenthesis are used to denote order of evaluation, not to wrap func params.
-- bar (bar 3)  -- pass the result of (bar 3) to bar

-- <function> <arguments> = <function body>
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
doubleUsh x y = doubleMe x + doubleMe y -- assemble new functions out of others

-- double a number if its less than 100
-- "if" in haskell is an expression that must return a value, not a statement
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2  -- else is mandatory

-- add one to every number produced by doubleSmallNumber
-- ' is generally used to denote a strict version of a function (non-lazy), or a
-- slightly modified version, or a variable with a similar name.
doubleSmallNumber' x = (doubleSmallNumber x) + 1

-- also valid name
-- this doesn't accept any parameters, so its not a function but rather a
--  "definition" or "name". Definitions can't change once defined.
conanO'Brien = "Derp derp derp"

-- also note: functions can't begin with capital letters
