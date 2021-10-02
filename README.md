# dotnet-starter

Opinionated dotnet starter app.

## Mission Control

I chose `make` as the Mission Control tool.


## Docs

- README.md - Introduction, developer setup, instructions for common tasks
- JOURNEY.md - Context and background on decisions. Great for providing perspective to your future self.

## Setup

1. Install `dotnet`
    - MacOS - `brew install dotnet`
    - Windows - `choco install dotnet` via [Chocolately](https://chocolatey.org)
    - Ubuntu
        - curl https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb --output packages-microsoft-prod.deb
        - dpkg -i packages-microsoft-prod.deb
        - rm packages-microsoft-prod.deb
        - apt-get update
        - apt-get install -y apt-transport-https
        - apt-get install -y dotnet-sdk-5.0
1. Install `make`
    - MacOS - `brew install make`
    - Windows - `choco install make`
    - Ubuntu - `sudo apt-get install build-essential`
