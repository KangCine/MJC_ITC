#define LED_01 11
#define LED_02 12
#define LED_03 13

#define LED_NUM 3
unsigned int ledArray[] = { LED_01,LED_02, LED_03 } ;
 
 
void setup() {
  Serial.begin(9600);
 
  for(int i = 0 ; i < LED_NUM ; i++) {
    pinMode(ledArray[i], OUTPUT) ;
  }
}
void loop() {
  if(Serial.available()) {
      char c = Serial.read();
      if(c == 'A') {
            for(int i = 0 ; i < LED_NUM ; i++) {
                digitalWrite(ledArray[i], HIGH) ;
            }
           return;
      }
      if(c == 'X') {
            for(int i = 0 ; i < LED_NUM ; i++) {
                digitalWrite(ledArray[i], LOW) ;
            }
           return;
      }
      int ledNum = c - '1';
      digitalWrite(ledArray[ledNum],!digitalRead(ledArray[ledNum])) ;
  }
}
