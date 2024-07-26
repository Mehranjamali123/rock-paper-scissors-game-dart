import 'dart:io';
import 'dart:math';
void main() {
   //  Make a two-player Rock-paper-scissors against computer. Ask for player input comapre them, print out the message to the a winner

    print("enter player1 name");
    String playerChoice =stdin.readLineSync()!;

     // Generate computer's choice
    Random random = Random();
    List<String> choices = ['rock', 'paper', 'scissors'];
    String computerChoice = choices[random.nextInt(choices.length)];

    print("Computer chose: $computerChoice");


 // Determine the winner
      if (!choices.contains(playerChoice)) {
        print("Invalid choice. Please choose rock, paper, or scissors.");
      } else if (playerChoice == computerChoice) {
        print("It's a tie!");
      } else if ((playerChoice == 'rock' && computerChoice == 'scissors') ||
                (playerChoice == 'scissors' && computerChoice == 'paper') ||
                (playerChoice == 'paper' && computerChoice == 'rock')) {
        print("You win!");
      } else {
        print("Computer wins!");
      }






}
