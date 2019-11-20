
//remove warning if firstName has input
document.getElementById("firstName").addEventListener("blur", function () {
  if (this.value !== "") {
    firstNameError.innerHTML = "";
  }
});

//remove warning if lastName has input
document.getElementById("lastName").addEventListener("blur", function () {
  if (this.value !== "") {
    lastNameError.innerHTML = "";
  }
});

//remove warning if address1 has input
document.getElementById("address1").addEventListener("blur", function () {
  if (this.value !== "") {
    address1Error.innerHTML = "";
  }
});

//remove warning if city has input
document.getElementById("city").addEventListener("blur", function () {
  if (this.value !== "") {
    cityError.innerHTML = "";
  }
});

//remove warning if province has been selected
document.getElementById("province").addEventListener("blur", function () {
  if (profile.province.options.selectedIndex != 0) {
    provinceError.innerHTML = "";
  }
});

//remove warning if country has been selected
document.getElementById("country").addEventListener("blur", function () {
  if (profile.country.options.selectedIndex != 0) {
    countryError.innerHTML = "";
  }
});

//added event listener for the submit button to check validation
document.profile.addEventListener("submit", validate.validateProfile)

//added event listener for the clear button to clear values
document.profile.addEventListener("clear", validate.clear)