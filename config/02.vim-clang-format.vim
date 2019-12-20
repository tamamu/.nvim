let g:clang_format#code_style = "mozilla"
let g:clang_format#style_options = {
  \ "AccessModifierOffset" : -4,
  \ "AllowShortIfStatementsOnASingleLine": "true",
  \ "AlwaysBreakTemplateDeclarations": "true",
  \ "Standard": "C++11",
  \ "BreakBeforeBraces": "Stroustrup",
  \ }
autocmd FileType c,cpp,objc ClangFormatAutoEnable
