{ mkDerivation, aeson, array, base, base64-bytestring, binary
, blaze-html, blaze-markup, bytestring, cmark, containers
, data-default, deepseq, directory, extensible-exceptions
, filemanip, filepath, ghc-prim, haddock-library, highlighting-kate
, hslua, HTTP, http-client, http-client-tls, http-types
, JuicyPixels, mtl, network, network-uri, old-time, pandoc-types
, parsec, process, random, scientific, SHA, stdenv, syb, tagsoup
, temporary, texmath, text, time, unordered-containers, vector, xml
, yaml, zip-archive, zlib
}:
mkDerivation {
  pname = "pandoc";
  version = "1.17.2";
  sha256 = "1v78zq12p71gq0pc24h08inxcq5gxd0xb7m5ds0xw9pv9l2pswl1";
  libraryHaskellDepends = [
    aeson array base base64-bytestring binary blaze-html blaze-markup
    bytestring cmark containers data-default deepseq directory
    extensible-exceptions filemanip filepath ghc-prim haddock-library
    highlighting-kate hslua HTTP http-client http-client-tls http-types
    JuicyPixels mtl network network-uri old-time pandoc-types parsec
    process random scientific SHA syb tagsoup temporary texmath text
    time unordered-containers vector xml yaml zip-archive zlib
  ];
  doCheck = false;
  homepage = "http://pandoc.org";
  description = "Conversion between markup formats";
  license = "GPL";
}
