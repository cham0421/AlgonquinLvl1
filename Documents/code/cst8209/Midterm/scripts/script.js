let fName = "Waseem";
let lName = "Chamaa";
let sectionNum = 303;
let studentNum;

/*
Name:         getFullName()
Description:  returns the concatenated string with the contents 
              of the fName and lName variaible
Outputs:      (string) Returns the concatenated string
*/
function getFullName() {
  return `${fName} ${lName}`;
}

/*
Name:         setStudentCardNumber()
Description:  Prompts user to enter value student number. 
              Continues to prompt until user enters value.
*/
function setStudentCardNumber() {
  do {
    studentNum = prompt("Please enter your student number:", "");
  } while (studentNum == "" || studentNum == null)
}

/*
Name:         loopOutput(Number)
Description:  Loops for a given time outputting data from 
              other parts of the JS as well as number of iterations.
              Information includes (Full name / Section Number/ Student number)
Inputs:       totalTimes: the number of times the loop should iterate
*/
function loopOutput(totalTimes) {
  for (let index = 0; index < totalTimes; index++) {
    console.log(`${getFullName()} - ${sectionNum} - ${studentNum} - ${index+1}`);
  }
}


setStudentCardNumber();
loopOutput(3);