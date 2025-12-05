let 
    nixvim = import (
        builtins.fetchGit {
            url = "https://github.com/nix-community/nixvim";
            ref = "main";
        }
    );
in
{
    imports = [
        nixvim.homeModules.nixvim
        ./nixvim
    ];
}
