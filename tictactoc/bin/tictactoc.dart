import 'dart:io';
class TicTacToe
 {
 List<String>board=[" "," "," "," ", " ", " ", " "," "," "];
 String currentPlayer="x";
 
 
   
  
displayBoard(){
  for (int i = 0; i < 9; i+=3) {
   print("${board[i]} | ${board[i+1]} | ${board[i+2]}");
    if(i<6){
      print("---------");
    }
  }
  }
 move(){
  while(true){ 
  
   print("chose aposition from 1 to 9 🥰");
  int position=int.parse(stdin.readLineSync()!);
  
  if(position <1 || position>9){
    
    print("invalid position😕");
    continue;
  }
  if(board[position-1] != " " ){
    print(" this positon is already filled 😕"); 
    continue;
  } //if you  found the right  position break the loop
  else{
    board[position-1]= currentPlayer;
    break;
  }
  }
}
bool playagain(){
  print("do you like to play agaon? (y/n)");
  String? result=stdin.readLineSync();
  if(result=="y"){
    List<String>board=[" "," "," "," ", " ", " ", " "," "," "];
    currentPlayer="x";
    return true;
  }
  else {
    return false;
  }
}
void switchplayer(){
  currentPlayer=currentPlayer =="x"? "o":"x";
}

bool checkWinner() {
  // Rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != " " &&
        board[i] == board[i + 1] &&
        board[i + 1] == board[i + 2]) {
      return true;
    }
  }

  // Columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != " " &&
        board[i] == board[i + 3] &&
        board[i + 3] == board[i + 6]) {
      return true;
    }
  }

  // Diagonals
  if (board[0] != " " && board[0] == board[4] && board[4] == board[8]) {
    return true;
  }
  if (board[2] != " " && board[2] == board[4] && board[4] == board[6]) {
    return true;
  }

  return false;
}

startGame() {
   print("wlcome to Tic Tac Toe👋");
    print("this gama is played by 2 players");
    print("player 1 is X"); 
    print("player 2 is O");
    print("player 1 will start first"); 
  
  while (true) {
    displayBoard();
    move();
    // Check for a winner after each move
    if (checkWinner()) {
      displayBoard();
      print("player $currentPlayer wins! 🎉");
     if(playagain()){
      continue;
     }
    //تعادل 

     else if(!board.contains(" ")){
      displayBoard();
      print("no one wins !😕")  ;
    if(!playagain()){
      break;
     }
    }
  
else{
      switchplayer();
    }
  }
  print("thanks for playing! 👋");


 }}}
void main(){
TicTacToe game=TicTacToe();
game.startGame();


}