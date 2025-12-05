{ pkgs, ... }:

{
    imports = [
        ./config
    ];

    home.username = "fjtluz";
    home.homeDirectory = "/home/fjtluz";

    home.stateVersion = "25.05";

    home.packages = with pkgs; [
        rustup
        zoxide
        ripgrep
        nixd
    ];

    home.sessionVariables = {
        SHELL = "/nix/store/lnqvjambizndir3759ny2zgi4idfx789-user-environment/bin/fish";
    };

    programs.home-manager.enable = true;

    programs.git = {
        enable = true;

        settings.user.name = "fjtluz"; 
        settings.user.email = "fjtluz@proton.me";
    };

    programs.fish = {
        enable = true;

        shellAliases = {
            cd = "z";
        };

        interactiveShellInit = ''
            fish_add_path $HOME/.cargo/bin
        '';

        shellInitLast = ''
            zoxide init fish | source
        '';
    };

    programs.zellij = {
        enable = true;
        enableFishIntegration = true;
        exitShellOnExit = true;
        settings = {
            keybinds.normal._children = [
            {
                bind = {
                    _args = ["Alt T"];
                    NewTab = [];
                };
            }
            {
                bind = {
                    _args = ["Alt H"];
                    GoToPreviousTab = [];
                };
            }
            {
                bind = {
                    _args = ["Alt L"];
                    GoToNextTab = [];
                };
            }
            {
                bind = {
                    _args = ["Alt 1"];
                    GoToTab = [1];
                };
            }
            {
                bind = {
                    _args = ["Alt 2"];
                    GoToTab = [2];
                };
            }
            {
                bind = {
                    _args = ["Alt 3"];
                    GoToTab = [3];
                };
            }
            {
                bind = {
                    _args = ["Alt 4"];
                    GoToTab = [4];
                };
            }
            {
                bind = {
                    _args = ["Alt 5"];
                    GoToTab = [5];
                };
            }
            {
                bind = {
                    _args = ["Alt 6"];
                    GoToTab = [6];
                };
            }
            {
                bind = {
                    _args = ["Alt 7"];
                    GoToTab = [7];
                };
            }
            {
                bind = {
                    _args = ["Alt 8"];
                    GoToTab = [8];
                };
            }
            {
                bind = {
                    _args = ["Alt 9"];
                    GoToTab = [9];
                };
            }
            {
                unbind = {
                    _args = ["Ctrl o"];
                };
            }
            ];
            keybinds.pane._children = [
            {
                bind = {
                    _args = ["h"];
                    NewPane = ["Left"];
                    SwitchToMode = ["Normal"];
                };
            }
            {
                bind = {
                    _args = ["j"];
                    NewPane = ["Down"];
                    SwitchToMode = ["Normal"];
                };
            }
            {
                bind = {
                    _args = ["k"];
                    NewPane = ["Up"];
                    SwitchToMode = ["Normal"];
                };
            }
            {
                bind = {
                    _args = ["l"];
                    NewPane = ["Right"];
                    SwitchToMode = ["Normal"];
                };
            }
            ];
            show_startup_tips = false;
            ui.pane_frames.hide_session_name = true;
        };
    };

    home.file.".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
}
