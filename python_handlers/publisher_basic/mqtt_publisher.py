import paho.mqtt.client as mqtt
import time
import ssl
from datetime import datetime
import random

TOPIC = "blue/temp/out"
mqttBroker = "192.168.1.1"
client = mqtt.Client("python_test")
client.username_pw_set("username", "password")
client.connect(mqttBroker, 1883)

while True:
    date = datetime.now()
    client.publish(TOPIC, str(round(random.uniform(20, 30), 0)))
    print("Just published " + date.strftime("%d/%m/%Y %H:%M:%S") + " to Topic " + TOPIC)
    time.sleep(60)
