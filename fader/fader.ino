int fader1_pin = A1 , fader1_value , fader1_percent; //A1 - FADER1
float fader1_volt;
int fader2_pin = A2 , fader2_value , fader2_percent; //A2 - FADER2
float fader2_volt;

int led1[5] = {6,5,4,3,2}; //vermelho
int led2[5] = {7,8,9,10,11};  //amarelo


void setup(){
  for (int i = 0 ; i < 5 ; i++){
    pinMode(led1[i], OUTPUT);
    pinMode(led2[i], OUTPUT);
  }
    //initialize serial communications at a 9600 baud rate
    Serial.begin(57600);
}


void loop(){
  fader1_value = analogRead(fader1_pin);
  fader1_percent = map(fader1_value,0,1023,0,100);
  fader1_volt = fader1_value * ( 5.0 / 1023.0 );

  fader2_value = analogRead(fader2_pin);
  fader2_percent = map(fader2_value,0,1023,0,100);
  fader2_volt = fader2_value * ( 5.0 / 1023.0 );

/***************************************led1.1**************************************/
  //led1.1+led2.1
  if( fader1_percent > 80 && (fader2_percent > 80 )){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(11);


    delay(500);
  }
  //led1.1+led2.2
  if( (fader1_percent > 80) && ((fader2_percent > 60 && fader2_percent <=80)) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(12);


    delay(500);
  }
  //led1.1+led2.3
  else if( (fader1_percent > 80) && (fader2_percent > 40 && fader2_percent <= 60) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(13);


    delay(500);
  }
  //led1.1+led2.4
  if( (fader1_percent > 80) && ((fader2_percent > 20 && fader2_percent <= 40)) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(14);


    delay(500);
  }
  //led1.1+led2.5
  if( (fader1_percent > 80) && (fader2_percent <= 20) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(15);


    delay(500);
  }

/***************************************led1.2**************************************/
  //led1.2+led2.1
  if( (fader1_percent > 60 && fader1_percent <=80) && (fader2_percent > 80 ) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(21);


    delay(500);
  }
  //led1.2ON+led2.2ON
  if( (fader1_percent > 60 && fader1_percent <=80) && (fader2_percent > 60 && fader2_percent <=80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(22);


    delay(500);
  }
  //led1.2ON+led2.3ON
  else if( (fader1_percent > 60 && fader1_percent <=80) && (fader2_percent > 40 && fader2_percent <= 60) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(23);


    delay(500);
  }
  //led1.2ON+led2.4ON
  if( (fader1_percent > 60 && fader1_percent <=80) && (fader2_percent > 20 && fader2_percent <= 40) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(24);


    delay(500);
  }
  //led1.20N+led2.5ON
  if( (fader1_percent > 60 && fader1_percent <=80) && (fader2_percent <= 20) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(25);


    delay(500);
  }


/***************************************led1.3**************************************/
  //led1.3ON+led2.1
  if( (fader1_percent > 40 && fader1_percent <= 60) && (fader2_percent > 80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(31);


    delay(500);
  }
  //led1.3ON+led2.2ON
  if( (fader1_percent > 40 && fader1_percent <= 60) && (fader2_percent > 60 && fader2_percent <=80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(32);


    delay(500);
  }
  //led1.3ON+led2.3ON
  if( (fader1_percent > 40 && fader1_percent <= 60) && (fader2_percent > 40 && fader2_percent <= 60) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(33);


    delay(500);
  }
  //led1.3ON+led2.4ON
  if( (fader1_percent > 40 && fader1_percent <= 60) && (fader2_percent > 20 && fader2_percent <= 40) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(34);


    delay(500);
  }
  //led1.30N+led2.5ON
  if( (fader1_percent > 40 && fader1_percent <= 60) && (fader2_percent <= 20) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(35);


    delay(500);
  }


/***************************************led1.4**************************************/
  //led1.4ON+led2.1
  if( (fader1_percent > 20 && fader1_percent <= 40) && (fader2_percent > 80 ) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(41);


    delay(500);
  }
  //led1.4ON+led2.2ON
  if( (fader1_percent > 20 && fader1_percent <= 40) && (fader2_percent > 60 && fader2_percent <=80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(42);


    delay(500);
  }
  //led1.4ON+led2.3ON
  if( (fader1_percent > 20 && fader1_percent <= 40) && (fader2_percent > 40 && fader2_percent <= 60) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(43);


    delay(500);
  }
  //led1.4ON+led2.4ON
  if( (fader1_percent > 20 && fader1_percent <= 40) && (fader2_percent > 20 && fader2_percent <= 40) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(44);


    delay(500);
  }
  //led1.40N+led2.5ON
  if( (fader1_percent > 20 && fader1_percent <= 40) && (fader2_percent <= 20) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(45);


    delay(500);
  }



/***************************************led1.5**************************************/
  //led1.5ON+led2.1
  if( (fader1_percent <= 20) && (fader2_percent > 80 ) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(51);


    delay(500);
  }
  //led1.5ON+led2.2ON
  if( (fader1_percent <= 20) && (fader2_percent > 60 && fader2_percent <=80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(52);


    delay(500);
  }
  //led1.5ON+led2.3ON
  if( (fader1_percent <= 20) && (fader2_percent > 40 && fader2_percent <= 60) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(53);


    delay(500);
  }
  //led1.5ON+led2.4ON
  if( (fader1_percent <= 20) && (fader2_percent > 20 && fader2_percent <= 40) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(54);


    delay(500);
  }
  //led1.50N+led2.5ON
  if( (fader1_percent <= 20) && (fader2_percent <= 20) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);

    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(55);


    delay(500);
  }


/*
  //led1.1ON
  if( (fader1_percent > 80) ){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 0);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);
    Serial.println(1, DEC);
  }
  //led1.2ON
  else if(fader1_percent > 60 && fader1_percent <=80){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 0);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);
    Serial.println(2, DEC);
  }
  //led1.3ON
  else if(fader1_percent > 40 && fader1_percent <= 60){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 0);
    analogWrite(led1[4], 0);
    Serial.println(3, DEC);
    delay(500);
  }
  //LED1.4ON
  else if(fader1_percent > 20 && fader1_percent <= 40){
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 0);
    Serial.println(4, DEC);
    delay(500);
  }
  //LED1.5ON
  else if (fader1_percent <= 20) {
    analogWrite(led1[0], 255);
    analogWrite(led1[1], 255);
    analogWrite(led1[2], 255);
    analogWrite(led1[3], 255);
    analogWrite(led1[4], 255);
    Serial.println(5, DEC);
    delay(500);
  }

  //led2.1
  if (fader2_percent <= 20) {
    analogWrite(led2[0], 255);
    analogWrite(led2[1], 0);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(6, DEC);
    delay(500);
  }
  //led2.2
  else if(fader2_percent > 20 && fader2_percent <= 40){
    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 0);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(7, DEC);
    delay(500);
  }
  //led2.3
  else if(fader2_percent > 40 && fader2_percent <= 60){
    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 0);
    analogWrite(led2[4], 0);
    Serial.println(8, DEC);
    delay(500);
  }
  //led2.4
  else if(fader2_percent > 60 && fader2_percent <=80){
    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 0);
    Serial.println(9, DEC);
    delay(500);
  }
  //led2.5
  else if( fader2_percent > 80 ){
    analogWrite(led2[0], 255);
    analogWrite(led2[1], 255);
    analogWrite(led2[2], 255);
    analogWrite(led2[3], 255);
    analogWrite(led2[4], 255);
    Serial.println(10, DEC);
    delay(500);
    }
*/
}
