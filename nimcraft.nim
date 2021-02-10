import streams

import src/je/types/nbt
import src/je/structext
import src/struct
import src/mutf8

var s: Stream = newStringStream()

struct.packUByte(s, 123)
struct.packInt(s, 123, '<')
struct.packFloat(s, 12.1)
struct.packLong(s, 120000000)

s.setPosition(0)

echo struct.unpackUByte(s)
echo struct.unpackInt(s, '<')
echo struct.unpackFloat(s)
echo struct.unpackLong(s)
