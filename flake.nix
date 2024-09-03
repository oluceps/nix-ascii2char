{
  outputs = _: rec {
    decToBin = import ./decToBin.nix;
    binToChar = import ./binToChar.nix;
    asciiToChar = i: binToChar (decToBin i);
  };
}
