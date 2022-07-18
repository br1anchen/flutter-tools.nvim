local vim_version = vim.version()

if vim_version.minor > 7 then
      -- nightly
   if vim.b.did_ftplugin_dart_lsp then
     return
   end
   vim.b.did_ftplugin_dart_lsp = true
else
   require('flutter-tools.lsp').attach()
end

