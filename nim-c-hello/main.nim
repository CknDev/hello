{.compile: "main.c"}
proc addTwo(a, b: cint): cint {.importc.}

when isMainModule:
  echo addTwo(6, 3)
