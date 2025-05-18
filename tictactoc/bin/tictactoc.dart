import 'dart:io';
class TicTacToe
 {
 List<String>board=[" "," "," "," ", " ", " ", " "," "," "];
 String currentPlayer="x";
 
  startGame(){
    print("wlcome to Tic Tac Toe👋");
    print("this gama is played by 2 players");
    print("player 1 is X"); 
    print("player 2 is O");
    print("player 1 will start first"); 
  }
displayBoard(){
  for (int i = 0; i < 9; i+=3) {
   print("${board[i]} | ${board[i+1]} | ${board[i+2]}");
    if(i<6){
      print("---------");
    }
  }
  }

  
 
  
 move(position){
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

 }


void main(){
TicTacToe game=TicTacToe();
game.startGame();
game.displayBoard();

}