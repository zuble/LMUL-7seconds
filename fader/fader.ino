int fader1_pin = A1 , fader1_value , fader1_percent; //A1 - FADER1
float fader1_volt;
int fader2_pin = A2 , fader2_value , fader2_percent; //A2 - FADER2
float fader2_volt;


int led[5] = {5,6,9,10,11};
int lumen =  5; // how bright the LED is , how many points to fade the LED by */


void setup(){
  //Serial.begin(9600);
  for (int i = 0 ; i < 5 ; i++){
    pinMode(led[i], OUTPUT);
  }
} 

void loop(){
  fader1_value = analogRead(fader1_pin);
  fader1_percent = map(fader1_value,0,1023,0,100);
  fader1_volt = fader1_value * ( 5.0 / 1023.0 );

  /*FADER TEST
  Serial.print("FADER 1 : ");
  Serial.print("ANALOG VALUE = ");
  Serial.print(fader1_value);
  Serial.print(" | VOLTAGE = "); 
  Serial.print(fader1_volt);
  Serial.print(" ");
  Serial.print(fader1_percent);
  Serial.println("%");
  delay(1000);
  */

  if (fader1_percent <= 20) { 
    analogWrite(led[0], lumen);
    analogWrite(led[1], 0); 
    analogWrite(led[2], 0);
    analogWrite(led[3], 0);
    analogWrite(led[4], 0);
  } 
  else if(fader1_percent > 20 && fader1_percent <= 40){
    analogWrite(led[0], lumen);
    analogWrite(led[1], lumen); 
    analogWrite(led[2], 0);
    analogWrite(led[3], 0);
    analogWrite(led[4], 0);
  }
  else if(fader1_percent > 40 && fader1_percent <= 60){
    analogWrite(led[0], lumen);
    analogWrite(led[1], lumen); 
    analogWrite(led[2], lumen);
    analogWrite(led[3], 0);
    analogWrite(led[4], 0);
  }
  else if(fader1_percent > 60 && fader1_percent <=80){
    analogWrite(led[0], lumen);
    analogWrite(led[1], lumen); 
    analogWrite(led[2], lumen);
    analogWrite(led[3], lumen);
    analogWrite(led[4], 0); 
  }else { 
    analogWrite(led[0], lumen);
    analogWrite(led[1], lumen); 
    analogWrite(led[2], lumen);
    analogWrite(led[3], lumen);
    analogWrite(led[4], lumen);
  }
}
