{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    rofi
    kitty
    waybar
    kdePackages.dolphin
    brightnessctl
    hyprpaper
    playerctl
    pavucontrol
  ];
}
