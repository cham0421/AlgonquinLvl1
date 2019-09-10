var secret = 7;
var guess = -1;
do {
    guess = Number(prompt("Guess the number between 1 and 10", ""));
} while (guess != secret);
document.writeln("Congratulations! YOU GOT IT <br>");