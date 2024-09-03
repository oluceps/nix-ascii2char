i:
let
  decToBin' =
    n: if n == 0 then "" else decToBin' (builtins.div n 2) + builtins.toString (builtins.bitAnd n 1);

  decToBin =
    n:
    let
      bin = decToBin' (n);
      paddedBin =
        if builtins.stringLength bin < 8 then
          builtins.substring 0 (8 - builtins.stringLength bin) "00000000" + bin
        else
          bin;
    in
    paddedBin;

in
decToBin i
