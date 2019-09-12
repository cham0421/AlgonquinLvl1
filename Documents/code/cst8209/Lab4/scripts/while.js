function getNumber() {
  return Number(prompt("Enter a number between 0 and 100", ""));
}
var choice = getNumber();
var index = 0;
while (index < choice) {
  document.writeln("value is: " + index + "</br>");
  index += 10;
}