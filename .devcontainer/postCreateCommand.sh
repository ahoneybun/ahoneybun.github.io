FROM mcr.microsoft.com/devcontainers/base:jammy
RUN sudo apt update && \
    sudo apt install -y ruby-full build-essential zlib1g-dev
EXPOSE 3000
    
