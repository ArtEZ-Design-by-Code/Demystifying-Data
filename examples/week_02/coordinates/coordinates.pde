// More information on coordinates: http://www.learner.org/jnorth/tm/LongitudeIntro.html

float latitude = 51;
float longitude = 5.2;

void setup() {
  size(1024, 640);
  
  background(0);
  
  float y = map(latitude, -90, 90, height, 0);
  float x = map(longitude, -180, 180, 0, width);
  
  fill(255, 0, 0);
  noStroke();
  
  ellipse(x, y, 20, 20);
}