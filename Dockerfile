FROM ubuntu
WORKDIR /root

LABEL maintainer="luisitoreal01@gmail.com"
# Install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y openssh-server git curl wget nano zsh zip unzip
# configure ssh
RUN mkdir -p /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# configure zsh as default shell
RUN chsh -s $(which zsh)

#install aws cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN  unzip awscliv2.zip
RUN  ./aws/install
RUN rm -rf awscliv2.zip
EXPOSE 22
EXPOSE 8080

CMD [ "/usr/sbin/sshd", "-D" ]