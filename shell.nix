{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [ 
       pkgs.jekyll
       pkgs.rubyPackages.webrick
       rubyPackages.jekyll-feed
       rubyPackages.jekyll-redirect-from
       ];
}
