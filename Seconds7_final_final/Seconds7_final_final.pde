import processing.sound.*;

// ================== ARDUINO ============================= //

import processing.serial.*;

Serial myPort;  // Create object from Serial class
String valstring;// Data received from the serial port



// ==================== SAVE DATA ======================== //

// RONDA 1
StringList player1, player2;
String[] player1_log, player2_log;
int num_pergunta = 1;

// RONDA 2
StringList player1_2, player2_2;
String[] player1_log2, player2_log2;
int num_pergunta2 = 1;


// RONDA 3
StringList player1_3, player2_3;
String[] player1_log3, player2_log3;
int num_pergunta3 = 1;



String value_1, value_2;


// ===================== SECONDS ======================== //

int sec;
int last;

// =================== APP ========================== //

String pergunta, pergunta2, turn;

float div, start, ang;

PFont comfortaa;
PFont lucida;

int num = 0;
int num2 = 0;
int num3 = 0;


boolean intro = true;
boolean info = false;
boolean questions1 = false;
boolean info2 = false;
boolean questions2 = false;
boolean info3 = false;
boolean questions3 = false;
boolean end = false;

//  SONS  //

SoundFile musica, boop;

// IMAGENS //

PImage intro1, intro2, intro3, intro4, intro5, intro6, intro8;
PImage ronda2_1, ronda2_2;
PImage ronda3;
PImage end1, end2, end3;

//RONDA 1
int t1 =  1000;
int t2 = -300;
int t3 = -300;
int t4 = -300;
int t5 = -300;
int t6 = -300;
int t7 = -300;
int t8 = -300;
int t9 = -300;

//RONDA 2
int c1 = 1000;
int c2 = -300;

//RONDA 3
int v1 = 1000;

//FINAL
int e1 = 1000;
int e2 = -300;
int e3 = -300;


int alfa = 0;

void setup() {


  //size(1280, 720);
  fullScreen();


  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 57600);
  myPort.bufferUntil ( '\n' ); 


  comfortaa = createFont("fonts/comfortaa.ttf", 32);
  lucida = createFont("fonts/lucida.TTF", 32);

  musica = new SoundFile(this, "slides/music.wav");
  boop = new SoundFile(this, "slides/boop.wav");

  musica.amp(0.3);
  musica.loop();

  //Ronda 1
  player1 = new StringList();
  player2 = new StringList();
  //Ronda 2
  player1_2 = new StringList();
  player2_2 = new StringList();
  //Ronda 3
  player1_3 = new StringList();
  player2_3 = new StringList();


  intro1 = loadImage("slides/1.jpg");
  intro2 = loadImage("slides/2.jpg");
  intro3 = loadImage("slides/3.jpg");
  intro4 = loadImage("slides/4.jpg");
  intro5 = loadImage("slides/5.jpg");
  intro6 = loadImage("slides/6.jpg");
  intro8 = loadImage("slides/8.jpg");


  ronda2_1 = loadImage("slides/16.jpg");
  ronda2_2 = loadImage("slides/17.jpg");

  ronda3  = loadImage("slides/23.jpg");

  end1  = loadImage("slides/25.jpg");
  end2  = loadImage("slides/26.jpg");
  end3  = loadImage("slides/27.jpg");
}


void serialEvent(Serial myPort) { 
  valstring = myPort.readStringUntil('\n');
} 




void draw() {

  frameRate(60);

  background(0);

  sec = millis()/1000 - last;


  //println(frameRate);

  // =================== INTRO ============================== //

  if (intro == true) {

    tint(255, t1);
    image(intro1, 0, 0, width, height);


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
    textFont(comfortaa);
    text("Start", width/2, height - height/5);
  }

  // ====================== INFO ========================= //


  if (info == true) {

    frameRate(60);
    t1 -= 100;


    if (t1 == - 200) {

      intro = false;  
      t2 = 1000;
    }

    // ===== MESSAGE 1 ========= //

    if (t2 >= -200) {

      t2 -= 10;

      tint(255, t2);
      image(intro2, 0, 0, width, height);
    }

    if (t2 == -200) {
      t3 = 1000;
    }


    // ===== MESSAGE 2 ========= //

    if (t3 >= -200) {

      t3 -= 10;

      tint(255, t3);
      image(intro3, 0, 0, width, height);
    }

    if (t3 == -200) {

      t4 = 1000;
    }

    // ===== MESSAGE 3 ========= //

    if (t4 >= -200) {

      t4 -= 50;

      tint(255, t4);
      image(intro4, 0, 0, width, height);
    }

    if (t4 == -200) {

      t5 = 1000;
    }


    // ===== MESSAGE 4 ========= //

    if (t5 >= -200) {

      t5 -= 50;

      tint(255, t5);
      image(intro5, 0, 0, width, height);
    }

    if (t5 == -200) {

      t6 = 1000;
    }


    // ===== MESSAGE 5 ========= //

    if (t6 >= -200) {

      t6 -= 20;

      tint(255, t6);
      image(intro6, 0, 0, width, height);
    }

    if (t6 == -200) {

      t7 = 1000;
    }

    // ===== MESSAGE 6 ========= //


    if (t7 >= -200) {


      last = millis() / 1000;

      timer(width/2, height/2, 400, sec);
    }

    if (start >= PI + PI/2) {

      boop.play();
      t8 = 1000;
    }


    // ===== MESSAGE 7 ========= //


    if (t8 >= -200) {

      t8 -= 10;
      fill(0);
      rect(width/2, height/2, width, height);

      tint(255, t8);
      image(intro8, 0, 0, width, height);
    }

    if (t8 == -100) {
      questions1 = true;
      info = false;
      last = millis() / 1000;
    }
  }

  // ================================================================  APP - RONDA 1 ================================================================== //

  if (questions1 == true) {

    if ( start >= PI + PI/2 ) {  // se o circulo fica inteiro

      num++;
      boop.play();

      frameRate(0.3);
      last = millis() / 1000;


      value_1 = str(valstring.charAt(0));
      value_2 = str(valstring.charAt(1));

      saveData(player1, player1_log, value_1, 1, 1);
      saveData(player2, player2_log, value_2, 2, 1);
      //num_pergunta++;
      //background(0, 100, 0);
    } else frameRate(60);


    // =========== PERGUNTAS - RONDA 1 =================== //

    switch (num) {

    case 0:
      pergunta = "1 - He/she is inclined to act more on improvisation ";
      pergunta2 = "than on prior planning.";

      break;

    case 1:

      pergunta = "2 - He/she trusts reason over feeling.";
      pergunta2= "";
      break;


    case 2:
      pergunta = "3 - He/she has pleasure in putting things in order.";
      pergunta2= "";
      break;


    case 3:
      pergunta = "4 - He/she tends to rely on experience ";
      pergunta2= "rather than on theoretical alternatives.";
      break;


    case 4:
      pergunta = "5 - He/she is reserved and distant in communication.";
      pergunta2= "";
      break;

    case 5:
      pergunta = "6 - He/she values justice rather than mercy.";
      pergunta2= "";
      break;

    case 6:
      pergunta = "7 - He/she rarely deviates from habits.";
      pergunta2= "";
      break;

    case 7:
      info2 = true;
      break;
    }  


    // ===========  TEXTO ================ //

    textAlign(CENTER, CENTER);
    textFont(lucida);

    //text(text_sec, width-50, 50);
    timer(width-100, 100, 50, sec);

    /*
     //textSize(15);
     //PLAYER 1
     text("Player 1", width/4, height - 250);
     text(value_1, width/4, height - 200);
     
     
     //PLAYER 2
     text("Player 2", width - width/4, height - 250);
     text(value_2, width - width/4, height - 200);
     */

    textSize(40);
    text(pergunta, width/2, height/2);
    text(pergunta2, width/2, height/2 + 50);
  }


  // ============== INFO RONDA 2 =================== //

  if (info2 == true) {

    questions1 = false;
    frameRate(60);

    if (c1 >= -200) {
      c1 -= 10;
      tint(255, c1);
      image(ronda2_1, 0, 0, width, height);
    }

    if (c1 == -200) {

      c2 = 1000;
    }

    if (c2>= -200) {
      c2 -= 10;
      tint(255, c2);
      image(ronda2_2, 0, 0, width, height);
    }

    if (c2 == -200) {

      info2 = false;
      questions2 = true;
      last = millis() / 1000;
    }
  }


  // ================================================================= APP - RONDA 2 ============================================================= //


  if (questions2 == true) {


    if (start >= PI + PI/2 ) {  // se o circulo fica inteiro


      last = millis() / 1000;
      boop.play();

      frameRate(0.3);



      if (num2 % 3 != 2) {

        value_1 = str(valstring.charAt(0));
        value_2 = str(valstring.charAt(1));

        saveData(player1_2, player1_log2, value_1, 1, 2);
        saveData(player2_2, player2_log2, value_2, 2, 2);

        //num_pergunta2++;
      }

      num2++;

      //background(0, 100, 0);
    } else frameRate(60);


    // =========== PERGUNTAS - RONDA 2 =================== //



    if (num2 % 3 == 0) {
      turn = "Answer with your truth";
    } else {
      turn = "Answer with the other's truth";
    }



    switch (num2) {

      //  =====  PERGUNTA 1  ===== //

    case 0:
      pergunta = "1 - Working experience is more valuable";
      pergunta2 = "than theoretical knowledge.";

      break;


    case 2:
      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(0) + " | Player 2 assumption - " + player2_2.get(1), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(0) + " | Player 1 assumption - " + player1_2.get(1), width/2, height/2);


      break;


      // =========  PERGUNTA 2 =========== //

    case 3:

      pergunta = "2 - Death penalty should be legal.";
      pergunta2 = "";
      break;


    case 5:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(2) + " | Player 2 assumption - " + player2_2.get(3), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(2) + " | Player 1 assumption - " + player1_2.get(3), width/2, height/2);

      break;


      // =========  PERGUNTA 3 =========== //

    case 6:

      pergunta = "3 - Strict observance of the established rules is likely";
      pergunta2 = "to prevent attaining a good outcome.";
      break;


    case 8:

      turn = "";
      pergunta = "";
      pergunta2 = "";


      textSize(30);
      text("Player 1  truth - " + player1_2.get(4) + " | Player 2 assumption - " + player2_2.get(5), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(4) + " | Player 1 assumption - " + player1_2.get(5), width/2, height/2);

      break;


      // =========  PERGUNTA 4 =========== //

    case 9:

      pergunta = "4 - Ghost and spirits are real.";
      pergunta2 = "";

      break;


    case 11:

      turn = "";
      pergunta = "";
      pergunta2 = "";


      textSize(30);
      text("Player 1  truth - " + player1_2.get(6) + " | Player 2 assumption - " + player2_2.get(7), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(6) + " | Player 1 assumption - " + player1_2.get(7), width/2, height/2);

      break;

      // =========  PERGUNTA 5 =========== //

    case 12:

      pergunta = "5 - Parties and social events are valuable.";
      pergunta2 = "";

      break;


    case 14:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(8) + " | Player 2 assumption - " + player2_2.get(9), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(8) + " | Player 1 assumption - " + player1_2.get(9), width/2, height/2);

      break;


      // =========  PERGUNTA 6 =========== //

    case 15:

      pergunta = "6 - Government should ensure economic equality.";
      pergunta2 = "";

      break;


    case 17:

      turn = "";
      pergunta = "";
      pergunta2 = "";


      textSize(30);
      text("Player 1  truth - " + player1_2.get(10) + " | Player 2 assumption - " + player2_2.get(11), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(10) + " | Player 1 assumption - " + player1_2.get(11), width/2, height/2);

      break;


      // =========  PERGUNTA 7 =========== //

    case 18:

      pergunta = "7 - Humans are routine animals.";
      pergunta2 = "";


      break;


    case 20:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(12) + " | Player 2 assumption - " + player2_2.get(13), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(12) + " | Player 1 assumption - " + player1_2.get(13), width/2, height/2);

      break;


      // =========  PERGUNTA 8 =========== //

    case 21:

      pergunta = "8 - High paying jobs in companies should be taken by women.";
      pergunta2 = "";
      break;


    case 23:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(14) + " | Player 2 assumption - " + player2_2.get(15), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(14) + " | Player 1 assumption - " + player1_2.get(15), width/2, height/2);

      break;


      // =========  PERGUNTA 9 =========== //

    case 24:

      pergunta = "9 - Government should provide shelter to war refugees.";
      pergunta2 = "";
      break;


    case 26:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(16) + " | Player 2 assumption - " + player2_2.get(17), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(16) + " | Player 1 assumption - " + player1_2.get(17), width/2, height/2);

      break;

      // =========  PERGUNTA 10 =========== //

    case 27:

      pergunta = "10 - Abortion should be legal only in extreme circunstances.";
      pergunta2 = "";
      break;


    case 29:

      turn = "";
      pergunta = "";
      pergunta2 = "";


      textSize(30);
      text("Player 1  truth - " + player1_2.get(18) + " | Player 2 assumption - " + player2_2.get(19), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(18) + " | Player 1 assumption - " + player1_2.get(19), width/2, height/2);

      break;


      // =========  PERGUNTA 11 =========== //

    case 30:

      pergunta = "11 - Any refugee that commits a crime should be denied shelter.";
      pergunta2 = "";
      break;


    case 32:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(20) + " | Player 2 assumption - " + player2_2.get(21), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(20) + " | Player 1 assumption - " + player1_2.get(21), width/2, height/2);

      break;


      // =========  PERGUNTA 12 =========== //

    case 33:

      pergunta = "12 - All ethnicities should be integrated into society.";
      pergunta2 = "";

      break;


    case 35:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(22) + " | Player 2 assumption - " + player2_2.get(23), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(22) + " | Player 1 assumption - " + player1_2.get(23), width/2, height/2);

      break;



      // =========  PERGUNTA 13 =========== //

    case 36:

      pergunta = "13 - Drugs should be decriminalized.";
      pergunta2 = "";
      break;


    case 38:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(24) + " | Player 2 assumption - " + player2_2.get(25), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(24) + " | Player 1 assumption - " + player1_2.get(25), width/2, height/2);

      break;


      // =========  PERGUNTA 14 =========== //

    case 39:

      pergunta = "14 - Every human being is capable of killing another one.";
      pergunta2 = "";

      break;


    case 41:

      turn = "";
      pergunta = "";
      pergunta2 = "";

      textSize(30);
      text("Player 1  truth - " + player1_2.get(26) + " | Player 2 assumption - " + player2_2.get(27), width/2, height/2 - 100);
      text("Player 2  truth - " + player2_2.get(26) + " | Player 1 assumption - " + player1_2.get(27), width/2, height/2);

      break;

    case 42:

      turn = "";
      pergunta = "";

      info3 = true;

      break;
    }  




    // ===========  TEXTO ================ //

    textAlign(CENTER, CENTER);

    timer(width-100, 100, 50, sec);

    /*
    //PLAYER 1
     textSize(15);
     text("Player 1", width/4, height - 250);
     text(value_1, width/4, height - 200);
     
     
     //PLAYER 2
     text("Player 2", width - width/4, height - 250);
     text(value_2, width - width/4, height - 200);
     */
    textFont(comfortaa);
    textSize(25);  
    text(turn, width/2, height/2 - 100);

    textFont(lucida);
    textSize(40);
    text(pergunta, width/2, height/2);
    text(pergunta2, width/2, height/2 + 50);
  }


  // ================ INFO RONDA 3 ================= // 


  if (info3 == true) {

    questions2 = false;
    frameRate(60);

    if (v1 >= -200) {
      v1 -= 10;
      tint(255, v1);
      image(ronda3, 0, 0, width, height);
    }

    if (v1 == -200) {

      questions3 = true;
    }
  }

  // ================================================================= APP - RONDA 3  ============================================================= //

  if (questions3 == true) {

    if ( start >= PI + PI/2 ) {  // se o circulo fica inteiro

      num3++;
      boop.play();
      
      frameRate(0.3);
      last = millis() / 1000;

      value_1 = str(valstring.charAt(0));
      value_2 = str(valstring.charAt(1));

      saveData(player1_3, player1_log3, value_1, 1, 3);
      saveData(player2_3, player2_log3, value_2, 2, 3);

      //num_pergunta++;
      //background(0, 100, 0);
    } else frameRate(60);


    // ======================= PERGUNTAS - RONDA 3 ================================= //

    switch (num3) {

    case 0:
      pergunta = "1 - He/she is inclined to act more on improvisation ";
      pergunta2 = "than on prior planning.";

      break;

    case 1:

      pergunta = "2 - He/she trusts reason over feeling.";
      pergunta2= "";
      break;


    case 2:
      pergunta = "3 - He/she has pleasure in putting things in order.";
      pergunta2= "";
      break;


    case 3:
      pergunta = "4 - He/she tends to rely on experience ";
      pergunta2= "rather than on theoretical alternatives.";
      break;


    case 4:
      pergunta = "5 - He/she is reserved and distant in communication.";
      pergunta2= "";
      break;

    case 5:
      pergunta = "6 - He/she values justice rather than mercy.";
      pergunta2= "";
      break;

    case 6:
      pergunta = "7 - He/she rarely deviates from habits.";
      pergunta2= "";
      break;

    case 7:
      end = true;
      break;
    }  


    // ===========  TEXTO ================ //

    textAlign(CENTER, CENTER);
    timer(width-100, 100, 50, sec);

    /*
     textSize(15);
     //PLAYER 1
     text("Player 1", width/4, height - 250);
     text(value_1, width/4, height - 200);
     
     
     //PLAYER 2
     text("Player 2", width - width/4, height - 250);
     text(value_2, width - width/4, height - 200);
     
     */
    textFont(lucida);
    textSize(40);

    text(pergunta, width/2, height/2);
    text(pergunta2, width/2, height/2 + 50);
  }


  // ================= FINAL ================ //

  if (end == true) {

    questions3 = false;
    frameRate(60);

    if (e1 >= -200) {
      e1 -= 10;
      tint(255, e1);
      image(end1, 0, 0, width, height);
    }

    if (e1 == -200) {

      e2 = 1000;
    }

    if (e2 >= -200) {

      e2 -= 10;
      tint(255, e2);
      image(end2, 0, 0, width, height);
    }

    if (e2 == -200) {
      e3 = 1000;
    }

    if (e3 >= -200) {

      tint(255, e3);
      image(end3, 0, 0, width, height);
    }


    /*
    alfa++;
     
     if (alfa >= 255) {
     alfa = 255;
     }
     
     fill(255, alfa);
     text("Thank you for participating!", width/2, height/2);
     */
  }
}
