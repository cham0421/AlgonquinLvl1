function setForLoopValues(str) {
  return Number(prompt(str, ""));
}
var minimum = setForLoopValues("Enter value for minimum")
var maximum = setForLoopValues("Enter value for maximum")
var increase = setForLoopValues("Enter an incrementing amount")
for (var i = minimum; i < maximum; i += increase) {
  document.writeln("value is: " + i + "<br>");
}