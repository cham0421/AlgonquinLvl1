//Lab5 - Working with the Document Object Model

// 1. Add the following text to the element with id=”mainTitle”
// Learning about the Document Object Model
document.getElementById("mainTitle").innerHTML = 'Learning about the Document Object Model'

// 2. Add the attribute to centre align the element with id=”mainTitle”
document.getElementById("mainTitle").setAttribute('align', 'center')

// 3. Change the title attribute on the img tag with the following text
// JavaScript 1
document.getElementById("image1").setAttribute('title', 'JavaScript 1')

// 4. Add the attribute to right align the element with id=”image1”
document.getElementById("image1").setAttribute('align', 'right')

// 5. Append the following text as a list item so it appears as the second item in the
// JavaScript Version History list
// August 1996
let myList = document.getElementById("list")
let newListElement = document.createElement('li')
newListElement.textContent = "1.1 August 1996"
myList.insertBefore(newListElement, myList.getElementsByTagName('li')[1])

// 6. Append the following text as a list item so it appears as the last item in the
// JavaScript Version History list
// 1.8.2 June 22, 2009
let newLastListElement = document.createElement('li')
newLastListElement.textContent = "1.8.2 June 22, 2009"
myList.appendChild(newLastListElement);

// 7. Change the list item that contains the text 1.6 November 9999 to now contain the
// text 1.6 November 2005
myList.childNodes.forEach(element => {
  if ( element.textContent == "1.6 November 9999" ) {
    element.textContent = "1.6 November 2005"
  }
});

// 8. Using the document.write method, display the number of li tags in the web page
document.write("The number of elements in the list is " + document.getElementById("list").getElementsByTagName("li").length)