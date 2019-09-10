function guessTheNumber() {
  return Number(prompt("Guess the number between 1 and 10", ""))
}
var secret = 7;
var guess;
do {
  guess = guessTheNumber();
} while (guess != secret);
document.writeln("Congratulations! YOU GOT IT <br>");