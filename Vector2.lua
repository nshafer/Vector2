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

Vector2 = Core.class()
Vector2._type = "Vector2"

Vector2.x = nil
Vector2.y = nil

function Vector2:init(x, y)
	self.x = x
	self.y = y or x

	-- Add our custom overrides to the existing metatable
	local mt = getmetatable(self)
	mt.__tostring = Vector2.tostring
	mt.__serialize = Vector2.serialize
	mt.__concat = Vector2.concat
	
	mt.__add = Vector2.add
	mt.__sub = Vector2.sub
	mt.__mul = Vector2.mul
	mt.__div = Vector2.div
	mt.__unm = Vector2.unm
	
	mt.__eq = Vector2.eq
end

-- Special functions
function Vector2.distance(a, b)
	local res = b - a
	return math.sqrt(res.x^2 + res.y^2)
end

function Vector2.distancePoint(v, x, y)
	local res = Vector2.new(v.x - x, v.y - y)
	return math.sqrt(res.x^2 + res.y^2)
end

-- Member methods
function Vector2:distanceTo(b)
	return Vector2.distance(self, b)
end

function Vector2:distanceToPoint(x, y)
	return Vector2.distancePoint(self, x, y)
end

-- Overloaded operators
function Vector2.tostring(v)
	return v.x .. "," .. v.y
end

function Vector2.serialize(v)
	return v
end

function Vector2.concat(a, b)
	if type(a) == "string" then
		return a .. Vector2.tostring(b)
	elseif type(b) == "string" then
		return Vector2.tostring(a) .. b
	else
		return Vector2.tostring(a) .. Vector2.tostring(b)
	end
end

function Vector2.add(a, b)
	local res = Vector2.new()
	if type(a) == "number" then
		res.x = a + b.x
		res.y = a + b.y
	elseif type(b) == "number" then
		res.x = a.x + b
		res.y = a.y + b
	else
		res.x = a.x + b.x
		res.y = a.y + b.y
	end
	return res
end

function Vector2.sub(a, b)
	local res = Vector2.new()
	if type(a) == "number" then
		res.x = a - b.x
		res.y = a - b.y
	elseif type(b) == "number" then
		res.x = a.x - b
		res.y = a.y - b
	else
		res.x = a.x - b.x
		res.y = a.y - b.y
	end
	return res
end

function Vector2.mul(a, b)
	local res = Vector2.new()
	if type(a) == "number" then
		res.x = a * b.x
		res.y = a * b.y
	elseif type(b) == "number" then
		res.x = a.x * b
		res.y = a.y * b
	else
		res.x = a.x * b.x
		res.y = a.y * b.y
	end
	return res
end

function Vector2.div(a, b)
	local res = Vector2.new()
	if type(a) == "number" then
		res.x = a / b.x
		res.y = a / b.y
	elseif type(b) == "number" then
		res.x = a.x / b
		res.y = a.y / b
	else
		res.x = a.x / b.x
		res.y = a.y / b.y
	end
	return res
end

function Vector2.unm(v)
	local res = Vector2.new()
	res.x = -v.x
	res.y = -v.y
	return res
end

function Vector2.eq(a, b)
	return a.x == b.x and a.y == b.y
end

