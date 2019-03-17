FROM nodered/node-red-docker:rpi-v8

# installing an editor
USER root
RUN apt-get update && apt-get install nano bluetooth bluez libbluetooth-dev libudev-dev

# following command should assure that user node-red can use sudo without requiring to enter a password.
RUN echo "node-red ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# following command is needed to run node js with root priviliges
# see https://github.com/noble/noble#running-without-rootsudo
RUN sudo setcap cap_net_raw+eip $(eval readlink -f `which node`)

USER node-red

RUN npm install node-red-contrib-resinio
RUN npm install node-red-dashboard
RUN npm install node-red-contrib-credentials
RUN npm install node-red-contrib-eq3-bluetooth


COPY ./settings.js /data/settings.js
