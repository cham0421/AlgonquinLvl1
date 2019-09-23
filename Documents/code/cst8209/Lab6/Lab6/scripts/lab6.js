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

function addBooks() {
  for (let index = 0; index < 3; index++) {
    let addAuthor = prompt("Add the author for book " + index + ":", "")
    let addTitle = prompt("Add the title for book " + index + ":", "")
    let addGenre = prompt("Add the genre for book " + index + ":", "")
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
    bookArray.push(book);
  }

}
addBooks();