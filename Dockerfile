FROM nodered/node-red-docker:rpi-v8

# installing an editor
USER root
RUN apt-get update && apt-get install nano bluez

# following command should assure that user node-red can use sudo without requiring to enter a password.
RUN echo "node-red ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER node-red

RUN npm install node-red-contrib-resinio
RUN npm install node-red-dashboard
RUN npm install node-red-contrib-credentials
RUN npm install node-red-contrib-eq3-bluetooth


COPY ./settings.js /data/settings.js
