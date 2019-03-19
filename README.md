# Composite docker application with 3 containers (Node-Red, Nginx, MQTT broker) deployed on Raspberry Pi through [Balena](https://www.balena.io) for controlling an eqiva eQ-3 radiator thermostat 
## Objective
The objective is to control an [eqiva eQ-3 radiator thermostat](https://www.eq-3.com/products/eqiva/bluetooth-smart-radiator-thermostat.html) (see image below) using a [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/).

The Raspberry Pi  communicates with eQ3 radiator thermostat over BLE (bluetooth low energy).  

Via the intranet: MQTT messages can be sent to the Pi to open/close the eQ3 thermostat, to request its status (including battery status), to set the target temperature of the thermostat, to switch to automatic/manual mode, ...

![eqiva eQ-3 bluetooth](./eqiva_eQ-3.jpg)

Moreover a simple UI is included that shows the current status of the thermostat (see screenshot below).
## Issues or Feature Requests
Any issues or feature requests can be found or reported here: https://github.com/janvda/balena-node-red-eq3/issues
