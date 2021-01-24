


// ================== SAVE DATA ======================= //

void saveData(StringList player, String[] player_log, String value, int num) {

  player.append("Round " + ronda);
  player.append(value);

  println("player " + num+ ": " + player);

  player_log = player.array();

  saveStrings("data/player" + num+ ".txt", player_log);
}


// ================== TIMER ====================== //



void timer(float posx, float posy, float r, int sec) {

  div = TWO_PI / 420;

  start = -PI/2 + ang;

  if (sec % 1 == 0) {

    ang += div;
  }

  if (start >= PI + PI/2) {
    ang = 0;
  }

  fill(255);
  noStroke();
  arc(posx, posy, r, r, start, PI + PI/2, PIE);
  
}


// =================================================//


void mousePressed() {

  if (intro == true) {

    if (mouseX >= width/2 - 150/2 && mouseX <= width/2 + 150/2 && mouseY >=  height - height/5 + 5 - 75/2 && mouseY <=  height - height/5 + 5 + 75/2 ) {
     
      info = true;
      
    }
  }
}


// ================================================//


void keyPressed() {

  /*
  // PLAYER 1
  if (key == '1') {
    value_1 = 1;
  }

  if (key == '2') {
    value_1 = 2;
  }

  if (key == '3') {
    value_1 = 3;
  }

  if (key == '4') {
    value_1 = 4;
  }

  if (key == '5') {
    value_1 = 5;
  }


  //PLAYER 2

  if (key == 'q') {
    value_2 = 1;
  }

  if (key == 'w') {
    value_2 = 2;
  }

  if (key == 'e') {
    value_2 = 3;
  }

  if (key == 'r') {
    value_2 = 4;
  }

  if (key == 't') {
    value_2 = 5;
  }
  */
  
  // COMECAR APP //  
  if(key == ' '){
    info = false;
    intro = false;
    end = false;
    questions = true;
  }
}
