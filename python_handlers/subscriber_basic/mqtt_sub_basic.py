#!/usr/bin/env python

import paho.mqtt.client as mqtt
from db_controller import Database
from datetime import datetime


MQTT_BROKER = "192.168.1.1"
MQTT_PORT = 1883
MQTT_SUB_NAME = "spy"
MQTT_USERNAME = "username"
MQTT_PASSWORD = "password"

DB_ADDRESS = "localhost"
DB_USERNAME = "root"
DB_PASSWORD = "kamil"
DB_NAME = "mqtt_home_db"


def on_message(client, userdata, message):
    try:
        print(datetime.now())
        print("Topic: " + message.topic)
        print("Message: " + str(message.payload.decode("utf-8")))
        home_db.insert_meas(str(message.payload.decode("utf-8")), home_db.select_id(message.topic)[0])
        print("Data inserted into DB")
        print("________________________________________________________________\n")
    except:
        print("***ERROR***")


def on_connect(client, userdata, flags, rc):
    print("Connection returned result: " + mqtt.connack_string(rc))


def on_disconnect(client, userdata, rc):
    if rc != 0:
        print("Unexpected disconnection.")


client = mqtt.Client(MQTT_SUB_NAME)
client.username_pw_set(MQTT_USERNAME, MQTT_PASSWORD)
client.connect(MQTT_BROKER,MQTT_PORT)

home_db = Database(DB_ADDRESS, DB_USERNAME, DB_PASSWORD, DB_NAME)

client.subscribe("#")
client.loop_start()

while True:
    client.on_message = on_message
