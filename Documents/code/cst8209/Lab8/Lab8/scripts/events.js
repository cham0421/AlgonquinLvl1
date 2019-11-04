//form element events

document.getElementsByName("submit").addEventListener("click", function () {
  validate.checkValid()
});
document.getElementsByName("clear").addEventListener("click", function () {
  validate.clearField()
});