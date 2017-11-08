class Book {
  String authors, title, imageURL;
  float rating;
  int year;
  
  float x, y, size, opacity;
  
  Book(String authorsInput, String titleInput, String imageURLInput, float ratingInput, int yearInput) {
    this.authors = authorsInput;
    this.title = titleInput;
    this.imageURL = imageURLInput;
    this.rating = ratingInput;
    this.year = yearInput;
    
    this.x = random(width);
    this.y = random(height);
  }
  
  void update() {
    this.size = map(this.rating, 4, 5, 2, 50);
    
    if (this.rating > 4.2) {
      this.opacity = 255;
    } else {
      this.opacity = 100;
    }
  }
  
  void display() {
    fill(255, this.opacity);
    noStroke();
    
    ellipse(this.x, this.y, this.size, this.size);
  }
}