{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    neovim

    ripgrep
    fzf
    fd
    lazygit

    lua-language-server
    rust-analyzer
    nil
    clang-tools
    pyright
  ];
}
