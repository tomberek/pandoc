{ mkDerivation, aeson, array, base, base64-bytestring, binary, blaze-html
, blaze-markup, bytestring, containers, css-text, data-default
, deepseq-generics, extensible-exceptions, happy, mtl, network-uri, old-locale
, old-time, pandoc-types, parsec, random, scientific, SHA, syb, tagsoup, text
, time, unordered-containers, vector, xml, yaml
}:

mkDerivation {
  pname = "my-pandoc";
  version = "1.13.2";
  src = builtins.filterSource (path: type: baseNameOf path != ".git") ./.;
  buildDepends = [
    aeson array base base64-bytestring binary blaze-html blaze-markup
    bytestring containers css-text data-default deepseq-generics
    extensible-exceptions happy mtl network-uri old-locale old-time
    pandoc-types parsec random scientific SHA syb tagsoup text time
    unordered-containers vector xml yaml
  ];
  homepage = "http://johnmacfarlane.net/pandoc";
  description = "Conversion between markup formats";
  license = "GPL";
}
