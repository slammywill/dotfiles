{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    zoxide
    starship

    fastfetch
    btop
  ];
}
