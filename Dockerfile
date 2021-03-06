FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive
## Set up pip3 and linter installs
RUN apt-get -qq update
RUN apt-get -qq install npm jq python3-pip mypy flake8 pylint wget
RUN pip3 install yamllint
RUN npm install -g dockerlint

CMD ["/bin/bash", "tail -f /var/log/messages"]
