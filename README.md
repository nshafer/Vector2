Vector2
============

This is a class to facilitate two dimensional vectors in Gideros.  It is basically a table with an x and a y variable, plus support for tostring, concatenation and math operations.  It also includes methods for calculating distances to other Vector2s, arbitrary {x=x,y=y} tables, or specific points.

Please be aware that this will involve overhead versus just representing your vectors as arbitrary {x=x,y=y} tables, so it's up to you if it's worth it based on how many vectors you're creating.  All instances will include an extra reference to the metatable, so will consume a little more memory.  However, all instances will reference the same metatable, so it's just the additional table pointer itself, which will vary based on platform, but most likely no more than an int64.

#Install

Just add the Vector2.lua file to your project.

# Example

```lua
local v1 = Vector2.new(1,2)
local v2 = Vector2.new(3,3)

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
```

#Methods

###Vector2.new()
Creates a new Vector2 object.

###Vector2:distanceTo(vector)
Returns the distance from self to the given vector.

Parameters:
* vector - A Vector2 object or table in the format {x=0,y=0}

###Vector2:distanceToPoint(x, y)
Returns the distance from self to the given point defined by x,y

Parameters:
* x - x coordinate of the point
* y - y coordinate of the point

