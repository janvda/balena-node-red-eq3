FROM nodered/node-red-docker:rpi-v8

# installing an editor
USER root
RUN apt-get update && apt-get install nano bluetooth bluez libbluetooth-dev libudev-dev

# following command should assure that user node-red can use sudo without requiring to enter a password.
RUN echo "node-red ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# following command is needed to run node js with root priviliges
# see https://github.com/noble/noble#running-without-rootsudo
RUN sudo setcap cap_net_raw+eip $(eval readlink -f `which node`)

# following command makes that we can execute hcitool without sudo (e.g. via execute node)
RUN sudo setcap cap_net_raw+eip $(eval readlink -f `which hcitool`)

USER node-red

RUN npm install node-red-contrib-resinio
RUN npm install node-red-dashboard
RUN npm install node-red-contrib-credentials
#RUN npm install node-red-contrib-eq3-bluetooth
RUN npm install btsimonh/node-red-contrib-eq3-bluetooth#btsimonh --save

# Take care that the following command is only effective the very first time the application is deployed
# on the device.  Next deployments won't overwrite  these files as /data is mounted volumne.
COPY settings.js flows.json flows_cred.json package.json /data/
