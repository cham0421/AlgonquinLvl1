

//remove warning if lastName has input
document.getElementById("firstName").addEventListener("blur", function(){
  if(this.value !== "") {
      firstNameError.innerHTML = "";
  }
});
document.getElementById("lastName").addEventListener("blur", function(){
  if(this.value !== "") {
      lastNameError.innerHTML = "";
  }
});
document.getElementById("address1").addEventListener("blur", function(){
  if(this.value !== "") {
      address1Error.innerHTML = "";
  }
});
document.getElementById("city").addEventListener("blur", function(){
  if(this.value !== "") {
      cityError.innerHTML = "";
  }
});
document.getElementById("province").addEventListener("blur", function(){
  if(profile.province.options.selectedIndex !=0) {
      provinceError.innerHTML = "";
  }
});
document.getElementById("country").addEventListener("blur", function(){
  if(profile.country.options.selectedIndex !=0) {
      countryError.innerHTML = "";
  }
});
document.profile.addEventListener("submit", validate)
document.profile.addEventListener("clear", clear)