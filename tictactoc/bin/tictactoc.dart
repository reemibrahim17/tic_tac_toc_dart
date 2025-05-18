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
while(true){
  print("chose aposition from 1 to 9 🥰");
  int position=int.parse(stdin.readLineSync()!);
  if(position <1 || position>9){
    print("invalid position😕");
  }
  if(board[position-1] != " " ){
    print(" this positon is already filled 😕"); 
  }
  else{
    board[position-1]= currentPlayer;
    if(currentPlayer=="x") {
      currentPlayer="o";
    } else {
      currentPlayer="x";
    }
  }
}
}
}
void main(){
TicTacToe game=TicTacToe();
game.startGame();
game.displayBoard();

}