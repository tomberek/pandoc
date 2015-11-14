{ mkDerivation, aeson, array, base, base64-bytestring, binary
, blaze-html, blaze-markup, bytestring, containers, data-default
, deepseq-generics, directory, extensible-exceptions, filepath, mtl
, network-uri, old-time, pandoc-types, parsec, process, random
, scientific, SHA, stdenv, syb, tagsoup, text, time
, unordered-containers, vector, xml, yaml
}:
mkDerivation {
  pname = "my-pandoc";
  version = "1.15.2";
  src = ./.;
  libraryHaskellDepends = [
    aeson array base base64-bytestring binary blaze-html blaze-markup
    bytestring containers data-default deepseq-generics directory
    extensible-exceptions filepath mtl network-uri old-time
    pandoc-types parsec process random scientific SHA syb tagsoup text
    time unordered-containers vector xml yaml
  ];
  doHaddock = false;
  doCheck = false;
  homepage = "http://pandoc.org";
  description = "Conversion between markup formats";
  license = "GPL";
}
