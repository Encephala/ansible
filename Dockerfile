FROM debian

RUN apt-get update -y && apt-get install sudo pipx vim -y

WORKDIR /ansible

RUN pipx install --include-deps ansible \
&& pipx inject ansible passlib \
&& pipx ensurepath
