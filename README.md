UBUNTU-PortableDMachine
===
## Papar Information
- Title:  `Ubuntu-DMachin`
- Authors:  `LFR(luisitoreal01@gmail.com)`

## Install & Dependence
- Docker
- visual studio code (optional)
## Dataset Preparation
| Dataset | Doc | | |
| ---     | ---   | --- | ---
| Docker |[Windows](https://docs.docker.com/desktop/install/windows-install/) | [Linux](https://docs.docker.com/desktop/install/linux-install/) | [MacOs](https://docs.docker.com/desktop/install/mac-install/)
|Visual studio Code |[Download](https://code.visualstudio.com/download)


## Directory Hierarchy
```
|—— .gitignore
|—— docker-compose.yml
|—— Dockerfile
|—— VData
|    |—— text.txt
```
## INSTRUCTIONS
- Install Docker on your system 
- Open the terminal inside the project directory
- run "docker compose build"
- run "docker compose up -d"

note: container will start automatically when docker is started.
In case you want to avoid auto-start, remove the
"restart: always" from docker-compose.yml 

In case you want to use the container for development, install an IDE which allows you to enter the Container.

I recommend "visual studio code" because it has a plugin "[Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)" which allows you to connect remotely to the container and use vsc natively.


## References
- [Docker Doc](https://docs.docker.com/)
- [awscli](https://aws.amazon.com/es/cli/)
- [oh my zsh](https://ohmyz.sh/)
- [Docker images]( https://hub.docker.com/_/ubuntu)
  
## License
[LICENSE]()
