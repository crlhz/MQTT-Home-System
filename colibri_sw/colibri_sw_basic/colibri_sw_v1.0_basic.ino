#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>


//***CONFIG PART***//

//ports for temperature sensor and battery voltage measurment
const int ONEWIREBUS = 4;
const int analogInPin = A0;

//broker credentials
const char* USERNAME = "username";
const char* PASSWORD = "password";

//network credentials
const char* SSID = "ssid";
const char* WIFI_PASSWORD = "password";
const char* MQTT_SERVER = "192.168.1.1";
const uint16_t PORT = 1883;

//topics for Colibri 'blue'
const char* TOPIC = "blue";
const char* To_TOPIC = "blue/temp/out";
const char* Ti_TOPIC = "blue/temp/in";
const char* Vb_TOPIC = "blue/vol/bat";

//topics for Colibri 'red'
//const char* TOPIC = "red";
//const char* To_TOPIC = "red/temp/out";
//const char* Ti_TOPIC = "red/temp/in";
//const char* Vb_TOPIC = "red/vol/bat";

//topics for Colibir 'yellow'
//const char* TOPIC = "yellow";
//const char* Ti_TOPIC = "yellow/temp/in";
//const char* Vb_TOPIC = "yellow/vol/bat";


//***END OF CONFIG PART***//


OneWire oneWire(ONEWIREBUS);
DallasTemperature sensors(&oneWire);

float tempI = 0;
float tempO = 0;
float sensorValue = 0;
int deviceCount = 0;
char buff[7];

WiFiClient espClient;
PubSubClient client(espClient);

void setup_wifi() {
  Serial.println("Connecting to ");
  Serial.print(SSID);

  WiFi.begin(SSID, WIFI_PASSWORD);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("Connected");
}

void reconnect() {
  while (!client.connected()) {
    if (client.connect(TOPIC, USERNAME, PASSWORD)) {
      Serial.println("connected");
    } else {
      Serial.print("connection failed");
      Serial.println("waiting 5s and trying again");
      delay(5000);
    }
  }
}

void setup() {
  Serial.begin(115200);
  setup_wifi();
  client.setServer(MQTT_SERVER, PORT);
}

void loop() {
  client.loop();
  if (client.connected()) {
    sensors.requestTemperatures();
    tempI = sensors.getTempCByIndex(0);
    tempO = sensors.getTempCByIndex(1);   //remove if there is no external sensor
    
    sensorValue = (analogRead(analogInPin) * 1.05) / 100;
    dtostrf(tempI,4, 2, buff);
    client.publish(Ti_TOPIC, buff);
    delay(50);
    
    dtostrf(tempO,4, 2, buff);            //remove if there is no external sensor
    client.publish(To_TOPIC, buff);       //remove if there is no external sensor
    delay(50);                            //remove if there is no external sensor
    
    dtostrf(sensorValue,4, 2, buff);
    client.publish(Vb_TOPIC, buff);
    delay(50);
    
    ESP.deepSleep(120e7);
  }else{
    reconnect();
  }
}
