var minimum = Number(prompt("Enter value for minimum", ""));
var maximum = Number(prompt("Enter value for maximum", ""));
var increase = Number(prompt("Enter an incrementing amount", ""));

for (var i = minimum; i < maximum; i += increase) {
  document.writeln("value is: " + i + "<br>");
}