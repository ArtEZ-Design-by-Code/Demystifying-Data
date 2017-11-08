// This sketch will take a while to download all the book covers.

ArrayList<Book> booksList;

void setup() {
  size(1280, 720);

  booksList = new ArrayList<Book>();

  Table booksData = loadTable("books.csv", "header");

  for (TableRow bookRow : booksData.rows()) {
    String authors = bookRow.getString("authors");
    String title = bookRow.getString("title");
    String imageURL = bookRow.getString("small_image_url");
    float rating = bookRow.getFloat("average_rating");
    int year = bookRow.getInt("original_publication_year");

    if (rating >= 4 && booksList.size() < 100) {
      Book oneBook = new Book(
        authors, 
        title, 
        imageURL, 
        rating, 
        year
        );

      booksList.add(oneBook);
      
      println(booksList.size());
    }
  }
}

void draw() {
  background(0);

  for (Book singleBookFromList : booksList) {
      singleBookFromList.update();
      singleBookFromList.display();
  }
}