i: # Expect literal bin
let
  asciiMap = import ./asciiMap.nix;
  inherit (asciiMap) ASCII;
in
builtins.elemAt (builtins.elemAt (builtins.filter (n: builtins.elemAt n 2 == i) ASCII) 0) 3
