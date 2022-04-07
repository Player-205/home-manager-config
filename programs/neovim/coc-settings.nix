{
  "suggest.noselect" = true;
  "suggest.enablePreview" = true;
  "suggest.enablePreselect" = false;
  "suggest.disableKind" = true;
  languageserver = {
    haskell = {
      command = "haskell-language-server-wrapper";
      args = [ "--lsp" ];
      rootPatterns = [
        "*.cabal"
        "stack.yaml"
        "cabal.project"
        "package.yaml"
        "hie.yaml"
      ];
      filetypes = [ "hs" "lhs" "haskell" "lhaskell" ];
    };
    purescript = {
      command = "purescript-language-server";
      args = ["--stdio"];
      filetypes = ["purescript"];
      trace.server = "off";
      rootPatterns = ["bower.json" "psc-package.json" "spago.dhall"];
      settings= {
        purescript = {
          addSpagoSources = true;
          addNpmPath = true;
        };
      };
    };
  };
}
