//validate module
var validate = function (e) {

  e.preventDefault()
  var valid = true

  if (profile.firstName.value == ""){
    document.getElementById('firstNameError').innerHTML="*Please enter a First Name*";
    valid = false;
  }
  
  if (profile.lastName.value == ""){
    document.getElementById('lastNameError').innerHTML="*Please enter a Last Name*";
    valid = false;
  }
  
  if (profile.address1.value == ""){
    document.getElementById('address1Error').innerHTML="*Please enter an Address";
    valid = false;
  }
  if (profile.city.value == ""){
    document.getElementById('cityError').innerHTML="*Please enter an City";
    valid = false;
  }
  
  if (profile.province.options.selectedIndex == 0){
    document.getElementById('provinceError').innerHTML="*Please select a province";
    valid = false;
  }
  if (profile.country.options.selectedIndex == 0){
    document.getElementById('countryError').innerHTML="*Please select a country";
    valid = false;
  }

  return valid;
  
};

var clear = function (e) {
  profile.fname.value == " "
  profile.lname.value == " "
  profile.address1.value == " "
  profile.city.value == " "
  profile.province.options.selectedIndex === -1
  profile.country.options.selectedIndex === -1
}