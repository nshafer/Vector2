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