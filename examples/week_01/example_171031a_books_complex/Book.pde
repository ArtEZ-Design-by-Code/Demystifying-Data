class Book {
  String authors, title;
  float rating;
  int year;

  float x, y, size, opacity;

  PImage bookCover;
  boolean hovered;

  Book(String authorsInput, String titleInput, String imageURLInput, float ratingInput, int yearInput) {
    this.authors = authorsInput;
    this.title = titleInput;
    this.rating = ratingInput;
    this.year = yearInput;

    this.x = random(width);
    this.y = random(height);

    this.bookCover = loadImage(imageURLInput);
  }

  void update() {
    this.hovered = false;
    this.size = map(this.rating, 4, 5, 2, 200);
    
    if (this.rating > 4.2) {
      this.opacity = 200;
    } else {
      this.opacity = 100;
    }

    // this.opacity = this.rating > 4.5 ? 255 : 128; // THIS IS FOR THE NERDS
    
    this.hovered = checkMouse();
    
    if (this.hovered)
      this.opacity = 255;
  }
  
  boolean checkMouse() {
    return mouseX > this.x && mouseX < this.x + this.size && mouseY > this.y && mouseY < this.y + this.size;
  }

  void display() {
    tint(255, this.opacity);
    image(this.bookCover, this.x, this.y, this.size, this.size);
    tint(255);
    
    if (this.hovered) {
      fill(255);
      noStroke();
      text(this.title, mouseX, mouseY);
    }
  }
}