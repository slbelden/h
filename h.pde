void setup() {
  size(500,500);
}

int r = 255;
int g = 0;
int b = 0;
int locus = 0;

void draw() {
  switch (locus) {
    case 0:
    if(b > 0) {
      b -= 2;
    } else {
      if (g >= 255) locus++;
      g += 2;
    }
    break;
    
    case 1:
    if(r > 0) {
      r -= 2;
    } else {
      if (b >= 255) locus++;
      b += 2;
    }
    break;
    
    case 2:
    if(g > 0) {
      g -= 2;
    } else {
      if (r >= 255) locus = 0;
      r += 2;
    }
    break;
  }
  
  background(r,g,b);
  textSize(420);
  text('h', mouseX - 125, mouseY + 50);
}
