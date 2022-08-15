#!/usr/bin/env coffee

> ./pkg > BinSet

set = new BinSet

txt = """set.add(new Uint8Array([1]))
set.has([1])
set.size
set.dump()
BinSet.load(set.dump(),1).size
set.delete([1])
set.size
set.has([1])
set.delete([1])
set.has([2])""".split('\n')

[
  set.add(new Uint8Array([1]))
  set.has([1])
  set.dump()
  set.size
  BinSet.load(set.dump(),1).size
  set.delete([1])
  set.size
  set.has([1])
  set.delete([1])
  set.has([2])
].map (i,pos)=>console.log(txt[pos],'=',i)
