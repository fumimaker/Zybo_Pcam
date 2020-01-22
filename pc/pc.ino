#include <SoftwareSerial.h>
#define pin 7
#define led 13
#define btn 5

uint32_t _us, us = 0;

SoftwareSerial mySerial(10,11);//RX, TX

void setup()
{
  // put your setup code here, to run once:
  pinMode(btn, INPUT_PULLUP);
  pinMode(led, OUTPUT);
  pinMode(pin, INPUT);
  Serial.begin(115200);
  mySerial.begin(9600);
  mySerial.println("press button to start");
}

void loop()
{
  if (!digitalRead(btn)){
    //mySerial.println("Pushed");
    for(int i=0; i<1000; i++){
      while(Serial.available()){
       Serial.read();
      }
      digitalWrite(led, HIGH);
      
      _us = micros();
      while(Serial.read() == -1);
      us = micros();
      int32_t tmp = us - _us;
      mySerial.println(tmp);
      
      digitalWrite(led,LOW);
      delay(100);
      while(Serial.available()){
        Serial.read();
      }
      delay(100);
    }
  }
}
