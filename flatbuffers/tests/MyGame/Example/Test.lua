-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: Example

local flatbuffers = require('flatbuffers')

local Test = {} -- the module
local Test_mt = {} -- the class metatable

function Test.New()
    local o = {}
    setmetatable(o, {__index = Test_mt})
    return o
end
function Test_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Test_mt:A()
    return self.view:Get(flatbuffers.N.Int16, self.view.pos + 0)
end
function Test_mt:B()
    return self.view:Get(flatbuffers.N.Int8, self.view.pos + 2)
end
function Test.CreateTest(builder, a, b)
    builder:Prep(2, 4)
    builder:Pad(1)
    builder:PrependInt8(b)
    builder:PrependInt16(a)
    return builder:Offset()
end

return Test -- return the module
