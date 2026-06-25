{ config, pkgs, lib, ... }:

let
    dotfiles = "${config.home.homeDirectory}/dotfiles/config";
    create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
    configs = {
    	hypr = "hypr";
        kitty = "kitty";
        rofi = "rofi";
        waybar = "waybar";
        nvim = "nvim";
        zsh = "zsh";
    };
in

{
    home.username = "lavalamp";
    home.homeDirectory = "/home/lavalamp";
    home.stateVersion = "26.05";

    programs.git = {
        enable = true;
        settings.user.name = "Sam Willems";
        settings.user.email = "samjwillems@protonmail.com";
    };

    programs.zsh = {
        enable = true;
        initContent = "source ~/.config/zsh/zsh_config";
        profileExtra = ''
            if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
                exec start-hyprland
            fi
        '';
    };

    xdg.configFile = builtins.mapAttrs (name: subpath: {
	    source = create_symlink "${dotfiles}/${subpath}";
	    recursive = true;
	}) configs;



    home.packages = with pkgs; [
        gcc
        rofi
        btop
        kitty
        waybar
        kdePackages.dolphin
        brightnessctl
        hyprpaper
        neovim
        ripgrep
        fzf
        fd
        zoxide
        fastfetch
        python3
        playerctl
        spotify
        starship
        zoxide
        steam
        lazygit
        obsidian
        cargo
    ];
}
