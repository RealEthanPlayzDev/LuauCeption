--// Vanilla Luau Vector3 implementation
--// Provides Vector3 lib if no existing implementation is available
--// Missing: xAxis, yAxis, zAxis, Magnitude, Unit, and all namecall functions
--// Last checked: 11 December 2024
local type = type
local typeof = typeof
local Vector3 = Vector3 do
    local lOk, lRbx = pcall(require, "@lune/roblox")
    Vector3 = Vector3 or (if lOk then lRbx.Vector3 else nil) or (if vector then { new = vector.create } else nil)
end
if not Vector3 then
    local Vector3Internal = {}
    Vector3Internal.__index = Vector3Internal
    Vector3Internal.__type = "Vector3"
    Vector3Internal.__metatable = "This metatable is locked"

    Vector3 = {}
    Vector3.new = function(x, y, z)
        return setmetatable({X = x or 0, Y = y or 0, Z = z or 0}, Vector3Internal)
    end
    Vector3.zero = Vector3.new(0,0,0)
    Vector3.one = Vector3.new(1,1,1)
    table.freeze(Vector3)

    Vector3Internal.__concat = function()
        assert(false, "attempt to concatenate Vector3 with Vector3")
        return
    end
    Vector3Internal.__unm = function(self)
        return Vector3.new(-self.X, -self.Y, -self.Z)
    end
    Vector3Internal.__add = function(self, v3_2)
        v3_2 = if (typeof(v3_2) == "number") then Vector3.new(v3_2, v3_2, v3_2) else v3_2
        return Vector3.new(self.X + v3_2.X, self.Y + v3_2.Y, self.Z + v3_2.Z)
    end
    Vector3Internal.__sub = function(self, v3_2)
        v3_2 = if (typeof(v3_2) == "number") then Vector3.new(v3_2, v3_2, v3_2) else v3_2
        return Vector3.new(self.X - v3_2.X, self.Y - v3_2.Y, self.Z - v3_2.Z)
    end
    Vector3Internal.__mul = function(self, v3_2)
        v3_2 = if (typeof(v3_2) == "number") then Vector3.new(v3_2, v3_2, v3_2) else v3_2
        return Vector3.new(self.X * v3_2.X, self.Y * v3_2.Y, self.Z * v3_2.Z)
    end
    Vector3Internal.__div = function(self, v3_2)
        v3_2 = if (typeof(v3_2) == "number") then Vector3.new(v3_2, v3_2, v3_2) else v3_2
        return Vector3.new(self.X / v3_2.X, self.Y / v3_2.Y, self.Z / v3_2.Z)
    end
    Vector3Internal.__mod = function(_, t)
        if (typeof(t) == "table") and (t["__type"] == "Vector3") then
            assert(false, "attempt to perform arithmetic (mod) on Vector3")
        else
            assert(false, "attempt to perform arithmetic (mod) on Vector3 and "..typeof(t))
        end
        return
    end
    Vector3Internal.__pow = function(_, t)
        if (typeof(t) == "table") and (t["__type"] == "Vector3") then
            assert(false, "attempt to perform arithmetic (pow) on Vector3")
        else
            assert(false, "attempt to perform arithmetic (pow) on Vector3 and "..typeof(t))
        end
        return
    end
    Vector3Internal.__tostring = function(self)
        return self.X..", "..self.Y..", "..self.Z
    end
    Vector3Internal.__eq = function(self, v3_2)
        if (typeof(v3_2) ~= "Vector3") then return false end
        return (self.X == v3_2.X) and (self.Y == v3_2.Y) and (self.Z == v3_2.Z)
    end
    Vector3Internal.__lt = function(self, v3_2)
        if (typeof(v3_2) ~= "Vector3") then return false end
        return (self.X < v3_2.X) and (self.Y < v3_2.Y) and (self.Z < v3_2.Z)
    end
    Vector3Internal.__le = function(self, v3_2)
        if (typeof(v3_2) ~= "Vector3") then return false end
        return (self.X <= v3_2.X) and (self.Y <= v3_2.Y) and (self.Z <= v3_2.Z)
    end
    Vector3Internal.__len = function()
        assert(false, "attempt to get length of a Vector3 value")
        return
    end

    local oldtype = type
    type = function(v)
        return if (oldtype(v) == "table") and v["__type"] then v["__type"] else oldtype(v)
    end

    local oldtypeof = typeof
    typeof = function(v)
        return if (oldtypeof(v) == "table") and v["__type"] then v["__type"] else oldtypeof(v)
    end
end