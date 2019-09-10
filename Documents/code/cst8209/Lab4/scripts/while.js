var choice = Number(prompt("Enter a number between 0 and 100", ""));
var index = 0;
while (index < choice) {
    document.writeln("value is: " + index + "</br>");
    index += 10;
}