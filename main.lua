-- Vector2
-- https://github.com/nshafer/Vector2

-- The MIT License (MIT)

-- Copyright (c) 2013 Nathan Shafer

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.

-- Vector2 examples
local v1 = Vector2.new(1,2)
local v2 = Vector2.new(3,3)

-- Access the points
print("v1.x", v1.x)
print("v1.y", v1.y)

-- Supports tostring
print("v1", v1)
print("v2", v2)

-- Supports concatenation
print("v1: ["..v1.."]")

-- Supports addition
print("v1 + v2", v1 + v2)
print("v1 + 1", v1 + 1)
print("1 + v1", 1 + v1)

-- Supports subtraction
print("v1 - v2", v1 - v2)
print("v1 - 1", v1 - 1)
print("1 - v1", 1 - v1)

-- Supports multiplication
print("v1 * v2", v1 * v2)
print("v1 * 1", v1 * 1)
print("1 * v1", 1 * v1)

-- Supports division
print("v1 / v2", v1 / v2)
print("v1 / 1", v1 / 1)
print("1 / v1", 1 / v1)

-- Supports unary minus (negative)
print("-v1", -v1)

-- Supports equality testing
print("v1 == v2", v1 == v2)

-- Supports inequality testing
print("v1 ~= v2", v1 ~= v2)

-- Supports distance calculations
print("v1:distanceTo(v2)", v1:distanceTo(v2))

-- Or arbitrary points
print("v1:distanceToPoint(5,6)", v1:distanceToPoint(5,6))