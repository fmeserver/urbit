::  This tests that syncs are correctly restarted after a breach
::
/-  spider
/+  *ph-io
=,  strand=strand:spider
^-  thread:spider
|=  vase
=/  m  (strand ,vase)
;<  az=tid:spider  bind:m  start-azimuth
;<  ~              bind:m  (spawn az ~bud)
;<  ~              bind:m  (spawn az ~marbud)
;<  ~              bind:m  (real-ship az ~bud)
;<  ~              bind:m  (real-ship az ~marbud)
;<  file=@t        bind:m  (touch-file ~bud %kids %foo)
;<  ~              bind:m  (check-file-touched ~marbud %home file)
;<  ~              bind:m  (breach-and-hear az ~bud ~marbud)
;<  ~              bind:m  (real-ship az ~bud)
;<  ~              bind:m  (dojo ~bud "|merge %kids ~marbud %kids, =gem %this")
;<  file=@t        bind:m  (touch-file ~bud %kids %bar)
;<  file=@t        bind:m  (touch-file ~bud %kids %baz)
;<  ~              bind:m  (check-file-touched ~marbud %home file)
;<  ~              bind:m  end-azimuth
(pure:m *vase)
