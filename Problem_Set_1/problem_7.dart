import 'dart:math';
import 'dart:io';

void main() {
  // Generate a random number between 1 and 100
  Random random = Random();
  int targetNumber = random.nextInt(100) + 1;

  int attempts = 0;
  bool hasGuessedCorrectly = false;

  print('Welcome to the Number Guessing Game!');
  print('Try to guess the number between 1 and 100.');

  while (!hasGuessedCorrectly) {
    stdout.write('Enter your guess: ');
    String input = stdin.readLineSync();
    int guess = int.tryParse(input);

    if (guess == null) {
      print('Please enter a valid number between 1 and 100.');
    } else {
      attempts++;

      if (guess < 1 || guess > 100) {
        print('Please guess a number between 1 and 100.');
      } else if (guess < targetNumber) {
        print('Too low! Try again.');
      } else if (guess > targetNumber) {
        print('Too high! Try again.');
      } else {
        hasGuessedCorrectly = true;
        print('Congratulations! You guessed the number $targetNumber in $attempts attempts.');
      }
    }
  }
}
