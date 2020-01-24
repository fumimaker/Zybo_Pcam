
#define pin 7
#define led 13
#define btn 5

uint32_t _us, us = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(btn, INPUT_PULLUP);
  pinMode(led, OUTPUT);
  pinMode(pin, INPUT);
  Serial.begin(115200);

}

void loop() {
  // put your main code here, to run repeatedly:
  if (!digitalRead(btn)){
    for(int i=0; i<101; i++){
      digitalWrite(led, HIGH);
      _us = micros();
      while( !(PIND&_BV(7)) ); // 7pin
      us = micros();
      digitalWrite(led, LOW);
      Serial.println(us - _us);
      while((PIND&_BV(7)));
      delay(500);
    }
  }
}
