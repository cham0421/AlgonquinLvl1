//validate module
var validate = (function () {

  function validFname(params) {
    if (document.getElementById(fname).innerText() == " ")
      return false;
    return true;
  }

  function validLname(params) {
    if (document.getElementById(Lname).innerText() == " ")
      return false;
    return true;
  }

  function validAddress(params) {
    if (document.getElementById(city).innerText() == " ")
      return false;
    return true;
  }

  function validCity(params) {
    if (document.getElementById(city).innerText() == " ")
      return false;
    return true;
  }

  function validProvince(params) {
    if (document.getElementById(province).innerText() == " ")
      return false;
    return true;
  }

  function validCountry(params) {
    if (document.getElementById(country).innerText() == " ")
      return false;
    return true;
  }
  //create private and public functions/objects/variables to validate the form
  function checkValid(params) {
    if (validFname() &&
      validLname() &&
      validAddress() &&
      validCity() &&
      validProvince() &&
      validCountry())
      return true
    return false
  }
  function clearField(params) {
    document.getElementById(fname).innerText() = " "
    document.getElementById(Lname).innerText() = " "
    document.getElementById(address1).innerText() = " "
    document.getElementById(city).innerText() = " "
    document.getElementById(country).innerText() = " "
    document.getElementById(province).innerText() = " "
  }


  return{
    checkValid,
    clearField
  } 
    

}());

