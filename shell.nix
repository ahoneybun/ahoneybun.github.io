{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
       jekyll
       rubyPackages.webrick
       rubyPackages.jekyll-feed
       rubyPackages.jekyll-redirect-from
       ];
}
