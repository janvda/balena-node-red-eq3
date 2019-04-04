node-red-eq3
============

node-red flow(s) for interfacing with an eqiva eQ-3 radiator thermostat over BLE.

The master version of these flows are maintained in the [janvda/node-red-eq-3](https://github.com/janvda/node-red-eq3) github repository 
and from time to time copied to the `node-red-eq3/` folder of the [janvda/balena-node-red-eq3](https://github.com/janvda/balena-node-red-eq3) github respository.

# Prerequisites

The following environment variables must be set:

 - `EQ3_BTADDR` : is the Bluetooth Address of the eQ-3 device.  E.g. `00:1a:22:0f:07:67`.  Take care that capitals are not allowed : so `1A` should be specified as `1a` in the `EQ3_BTADDR`.