{ lib, ... }:
{
    programs.nixvim.lsp = {
        servers = {
            rust_analyzer = {
                enable = true;
            };
            lua_ls = {
                enable = true;
            };
            nixd = {
                enable = true;
            };
        };

        keymaps = 
            lib.mapAttrsToList
          (
            key: props:
            {
              inherit key;
              options.silent = true;
            }
            // props
          )
          {
            "<leader>k".action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
            "<leader>j".action.__raw = "function() vim.diagnostic.jump({ count=1, float=true }) end";
            gd.lspBufAction = "definition";
            gr.lspBufAction = "references";
            gt.lspBufAction = "type_definition";
            gi.lspBufAction = "implementation";
            K.lspBufAction = "hover";
            "<F2>".lspBufAction = "rename";
          };
    };
}
