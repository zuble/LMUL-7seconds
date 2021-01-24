import processing.serial.*;

Serial myPort;  // Create object from Serial class
String valstring;// Data received from the serial port

// ==================== SAVE DATA ======================== //

StringList player1, player2;
String[] player1_log, player2_log;

String value_1, value_2;
int ronda = 1;

// ===================== SECONDS ======================== //

int sec;
int last;

// =================== APP ========================== //

String pergunta;

float div, start, ang;

int num = 0;

boolean intro = true;
boolean info = false;
boolean questions = false;
boolean end = false;

PImage logo, img2, img3;


int t1 =  1000;
int t2 = -300;
int t3 = -300;

int alfa = 0;

void setup() {

  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 57600);
  myPort.bufferUntil ( '\n' ); 

  size(1080, 720);

  player1 = new StringList();
  player2 = new StringList();

  logo = loadImage("7seconds.png");
  img2 = loadImage("7seconds-02.png");
  img3 = loadImage("7seconds-05.png");
}

void serialEvent(Serial myPort) { 
  valstring = myPort.readStringUntil('\n');
  // print(valstring.charAt(0)); println(valstring.charAt(1));
} 

void draw() {

  background(0);
  
  sec = millis()/1000 - last;

  //println(frameRate);

  // =================== INTRO ============================== //

  if (intro == true) {

    tint(255, t1);
    image(logo, 0, 0, width, height-50);


    if (mouseX >= width/2 - 150/2 && mouseX <= width/2 + 150/2 && mouseY >=  height - height/5 + 5 - 75/2 && mouseY <=  height - height/5 + 5 + 75/2 ) {
      fill(255, 50);
    } else {
      noFill();
    }



    stroke(255, t1);
    strokeWeight(2);
    rectMode(CENTER);
    rect(width/2, height - height/5 + 5, 150, 75, 7);

    fill(255, t1);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Start", width/2, height - height/5);
  }

  // ====================== INFO ========================= //


  if (info == true) {
    t1 -= 100;


    if (t1 == - 200) {

      intro = false;  
      t2 = 1000;
    }

    // ===== MESSAGE 1 ========= //

    if (t2 >= -200) {

      t2 -= 10;

      tint(255, t2);
      image(img2, 0, 0, width, height-50);
    }

    if (t2 == -200) {
      t3 = 1000;
    }


    // ===== MESSAGE 2 ========= //

    if (t3 >= -200) {

      t3 -= 10;

      tint(255, t3);
      image(img3, 0, 0, width, height-50);
    }

    if (t3 == -200) {

      questions = true;
      info = false;
      last = millis() / 1000;
    }
  }

  // =====================================  APP ========================================= //

  if (questions == true) {

    if ( start >= PI + PI/2 ) {
      frameRate(1);
      last = millis() / 1000;
  
      value_1 = str(valstring.charAt(0));
      value_2 = str(valstring.charAt(1));
      
      print(value_1);
      println(valstring.charAt(1));
      
      saveData(player1, player1_log, value_1, 1);
      saveData(player2, player2_log, value_2, 2);
      ronda++;
      //background(0, 100, 0);

      num++;
    } else frameRate(60);


    // =========== PERGUNTAS =================== //

    switch (num) {

    case 0:
      pergunta = "Question 1";

      break;

    case 1:

      pergunta = "Question 2";
      break;


    case 2:
      pergunta = "Question 3";
      break;


    case 3:
      end = true;
      break;
    }  


    // ===========  TEXTO ================ //

    textAlign(CENTER, CENTER);

    textSize(15);
    //text(text_sec, width-50, 50);
    timer(width-100, 100, 50, sec);


    //PLAYER 1
    text("Player 1", width/4, height - 250);
    //text(value_1, width/4, height - 200);


    //PLAYER 2
    text("Player 2", width - width/4, height - 250);
    //text(value_2, width - width/4, height - 200);


    textSize(40);
    text(pergunta, width/2, height/2);
  }

  // ================= FINAL ================ //

  if (end == true) {

    questions = false;
    frameRate(60);

    alfa++;

    if (alfa >= 255) {
      alfa = 255;
    }

    fill(255, alfa);
    text("Thank you for participating!", width/2, height/2);
  }
}
