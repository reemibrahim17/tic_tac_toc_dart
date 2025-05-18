
class TicTacToe
 {
 List<String>board=[" "," "," "," ", " ", " ", " "," "," "];
 String curreentPlayer="x";
 
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
}
void main(){
TicTacToe game=TicTacToe();
game.startGame();
game.displayBoard();

}