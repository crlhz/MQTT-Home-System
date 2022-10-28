# MQTT Home System

**MQTT Home** is an MQTT based IoT system, developed for the master's thesis. It is a set of devices and programs, which allows to measure physical quantities and control typical home devices. The application of an open-source protocol, such as MQTT, allows a user to add any compatible device to the existing IoT network and gives much more control over transmission and security. The core of the MQTT Home System is **Raspberry Pi**, which runs MQTT Broker, the database and website for measurement presentations and client device’s control. Wireless communication between broker and clients is ensured by a router. A diagram of the example network with three client devices is presented below.

<img src="https://imgur.com/v2wLpnS.jpg" width="500">

# Client Device - Colibri

The client device, called Colibri, is a microprocessor appliance designed from scratch, providing the measuring and executive functions. For purposes of this thesis, three clients have been assembled and communicated with Raspberry Pi via MQTT protocol. 

## Colibri HW
Colibri is a battery-powered device, which consists of two parts: Power Management Block and CPU Block.

![Colibri's block diagram](https://imgur.com/9A3nUZE.jpg)

The following inputs/outputs are available for user: 
- J1 - connector for battery charger;
- J2 - UART interface, used for programming device;
- J3 - 1-wire interface, here used as a interface for external temperature sensor;
- J4 - used for enabling deep sleep mode: 1 - 2: sleep mode, 2 - 3: no sleep mode;
- J5 - used for setting boot mode: 1 - 2: standard mode, 2 - 3: programming mode;
- J6 - connector for controlling additional devices (not used in this implementation);
- J7 - connector for 18650 Li-ion battery.

The Power Management Block is responsible for battery charging control and voltage adjustment for the CPU Block. Controller U3 is protecting the battery from being overcharged or over-discharged, by switching U4 and U5 MOSFET transistors, while voltage regulator U6 ensures 3.3V for the CPU Block. The CPU block is responsible for external devices maintenance and broker communication. It’s based on ESP8266 microcontroller, version ESP12 F, which provides a PCB antenna for WiFi transmission. The external resistors are necessary for proper microcontroller operation and they are connected according to the ESP datasheet. A voltage divider, which consists of resistors R8 and R9, is used for measuring battery voltage level. The Colibri software algorithm is presented below.

## Colibri SW
The configuration part allows a user to change topic names and network details, such as SSID, password, broker IP address, and client’s name. After typical variables and interfaces initialization, the program enters an infinite loop, where connection with a broker is established and the measured temperature and voltage is sent to the broker. Finally, the device is going into deep sleep mode for 20 minutes. The described algorithm ensures an acceptable battery life cycle, which can be extended by increasing the sleep time.

## Colibri PCB
Colibri’s PCB has been designed using Kicad software. It is a two layers PCB, which has been assembled by the reflow soldering method. The PCB is enclosed in a KRADEX ABS housing, which provides IP65 protection.

![Colibri's PCB](https://imgur.com/0d1Dxx0.jpg)

![Assembled Colibri](https://imgur.com/8yikLCK.jpg)

![Colibri in the housing](https://imgur.com/nyojRn7.jpg)

# Broker and subscriber script

The main component of the system is Raspberry Pi, running an MQTT broker called Mosquito, created by the Eclipse Foundation. It’s an open-source implementation of a server for versions 5.0, 3.1.1, and 3.1 of the MQTT protocol. Independently of it, a Python script, called *mqtt_sub_basic.py*, is running on the server. To be more precise, it is a client script, which subscribes to all topics, using the Eclipse Paho MQTT library, also created by Eclipse Foundation. In the beginning, the subscriber script establishes communication with the Mosquito broker and SQL database. Then, by using *client.subscribe("#")*, the script begins subscription of all topics, served by broker. Finally, in an infinite loop, *mqtt_subscribe.py* waits for messages sent by clients in format shown below:

    <topic name>, <measured value>
e.g
    
    blue/temp/out, 22.7
 
Messages received from clients are parsed and then inserted into the SQL database, using methods from the Database class (*db_controller.py* file). This mentioned class is based on the *mysql.connector* library, which allows sending SQL statements from Python scripts to a database. The *mqtt_sub_basic.py* script should be configured as a service, running in the Raspberry Pi’s background, so it starts at every boot-up of the operating system.

# MQTT Home database

The MQTT Home database consists of five tables. It has been developed using a migration mechanism, shared by PHP web framework Laravel. The three tables *users*, *migrations*, *personal_access_tokens* are default Laravel composition, which allows user and migration management. Furthermore, the table users has been implemented, with future development needs in mind, such as adding new topics via the website by logged-in users. The table *topics* stores available topic names, which can be used by client devices. For this system, the following topic format has been adopted.

![Topics format](https://imgur.com/9yrNCor.jpg)

Additionally, for convenient data presentation, the column unit has been defined in the topics table. The table measurements stores data received from clients via the mentioned Python script.

# MQTT Home website

The MQTT Home website is another important component of the entire system. Its main goal is to present collected data in a user-friendly and convenient way. Furthermore, in case of future development, it may provide some setup functionality, such as topics and users configuration. The website has been created using Laravel, an open-source PHP framework, designed according to the model-view-controller (MVC) architectural pattern. This improves its scalability and resolves many development issues related to cybersecurity, database connections, etc. The homepage, follows a grid layout, which is dynamically generated depending on the topic’s number. Each box stands for a single topic and contains the latest measurement. In a case of communication loss (i.e., 20 minutes or more without a new message), the label N/A is displayed. Apart from values, the boxes include topic names and units.

![MQTT Home homepage](https://imgur.com/So7hJ34.jpg)

By clicking on a specific box, the user is able to open the chart view. The charts implementation is based on the Highcharts library. For the sake of clarity of the chart, the displayed data are from the last three days only.

![MQTT Home chart page](https://imgur.com/VGKKb4J.jpg)

<img src="https://imgur.com/7SMUgfP.jpg" width="250">

The website’s project consists of three controllers: *Controller.php*, which is created by default as a Laravel Base Controller, together with *MainController.php* and *ChartController.php*, that form the core of the whole application. Both are responsible for retrieving data from the database, processing them into appropriate form and passing to the frontend section. This section is developed by using the Blade templates engine. In the *app.blade.php* file, the overall template of the website was designed, while in *main.blade.php* and *chart.blade.php* the specific content of both views is described. As mentioned before, the homepage consists of boxes representing every available topic. Clicking on any of them redirects to *home.test/chart/n*, where *n* stands for the topic identifier. At this address, a chart related to the chosen topic is displayed. The website project scheme is presented below.

![MQTT website's project scheme](https://imgur.com/nEJvg7a.jpg)

# Server configuration
The last but not least element of the MQTT Home System is the server system. It provides the following functionality: 
- running MQTT broker service;
- receiving data from clients;
- storing received data in the SQL database;
- running WWW service;
- presenting stored data on the website. 

Considering the price and energy consumption, the Raspberry Pi 4B SBC was chosen as the server hardware. This particular SBC is equipped with 4GB of RAM and runs a 1.5 GHz, 64-bit quad core ARM Cortex-A72 processor. Its capabilities exceed the current requirements of this application, but it may be an optimal choice for future development. As mentioned before, the MQTT broker service is run by Eclipse Mosquitto, installed according to the instructions described in the documentation. Afterwards, the default configuration has been applied. In the next step, Python v3.9.2 with *paho.mqtt.client* and *mysql.connector* libraries have been installed. MariaDB v10.5.12 was used as a relational database management system in connection with the phpMyAdmin service. The WWW server functionality has been built upon the LAMP software stack: Linux + Apache + MariaDB + PHP. Therefore, the last step was to install Apache v2.4.52 and PHP v8.1.3. The MQTT Home System website is running as an Apache virtual host on the default TCP port 80.
