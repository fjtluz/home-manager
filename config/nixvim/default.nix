{
    programs.nixvim = {
        enable = true;
        defaultEditor = true;

        vimAlias = true;

        globals.mapleader = "\\";

        opts = {
            expandtab = true;
            shiftwidth = 4;
            tabstop = 4;
        };
    };

    imports = [./plugins];
}
