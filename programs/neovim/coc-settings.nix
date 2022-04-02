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
  };
}