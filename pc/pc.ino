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
  mySerial.println("PC");
}

void loop()
{
  if (!digitalRead(btn)){
    //mySerial.println("Pushed");
    for(int i=0; i<101; i++){
      delay(500);
      while(Serial.available()){
       Serial.read();
      }
      digitalWrite(led, HIGH);
      
      _us = micros();
      while(Serial.read() == -1);
      us = micros();
      digitalWrite(led,LOW);
      int32_t tmp = us - _us;
      mySerial.println(tmp);
      
      
      
      while(Serial.available()){
        Serial.read();
      }
    }
  }
}
