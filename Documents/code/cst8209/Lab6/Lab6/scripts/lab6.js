//lab6 JavaScript file

book1 = {
  author: "William Shakespeare",
  title: "The Tempest",
  genre: "Historical Fiction"
};

book2 = {
  author: "Stephen King",
  title: "The Shining",
  genre: "Horror"
};

book3 = {
  author: "Anne Frank",
  title: "The Diary of Anne Frank",
  genre: "Non-Fiction"
};
var bookArray = new Array();

bookArray[0] = book1;
bookArray[1] = book2;
bookArray[2] = book3;

function addBooks(array) {
  for (let index = 0; index < 3; index++) {
    let addAuthor = prompt("Add the author for book " + (index+1) + ":", "")
    let addTitle = prompt("Add the title for book " + (index+1) + ":", "")
    let addGenre = prompt("Add the genre for book " + (index+1) + ":", "")
    if (addAuthor == "" || addTitle == "" || addGenre == "") {
      alert("Entries can't be blank");
      index--;
      continue;
    }
    book = {
      author: addAuthor,
      title: addTitle,
      genre: addGenre
    };
    array.push(book);
  }

}
function displayRecommendations(array) {
  for (let i = 0; i < array.length; i++) {
    const element = array[i];

    var title = document.createElement("h3")
    title.innerHTML = "Book "+ (i+1)
    var list = document.createElement("ul")
    var item = document.createElement("li")
    item.innerHTML = `Title: ${element.title}, Written By: ${element.author}, Genre: ${element.genre}`
    list.append(item)
    let bookList = document.getElementById("bookList")
    bookList.appendChild(title)
    bookList.appendChild(list)
  }
}
addBooks(bookArray);
displayRecommendations(bookArray);