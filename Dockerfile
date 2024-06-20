FROM debian

RUN apt-get update -y && apt-get install sudo pipx vim -y

RUN echo "jonathan ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN useradd jonathan -m -s /bin/bash --groups sudo

USER jonathan
WORKDIR /ansible

RUN pipx install --include-deps ansible \
&& pipx inject ansible passlib \
&& pipx ensurepath
