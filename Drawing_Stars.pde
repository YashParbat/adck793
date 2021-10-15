float SxPos;
float SyPos;
float FxPos;
float FyPos;
void setup() {
  size (500, 500);
  background(0);
  SxPos=width/2; //Starting x coordinate of x
  SyPos=0; //starting y coordinate of y
  FxPos=width/2; //Finishing coordinate of x
  FyPos=height/2; //Finishing coordinate of y
  stroke(random(255), random(255), random(255), 64);
}

void draw() {
  // background(0);
  strokeWeight(1);
  stroke(random(255), random(255), random(255), 64);
  //Drawing the top left quarter
  drawQuarter();
  // Drawing the bottom left quarter.
  translate(0, height);
  rotate(radians(270));
  drawQuarter();
 // Drawing the top right quarter.
  translate(width, height);
  rotate(radians(180));
  drawQuarter();
 // Drawing the bottom right quarter and hence finishing the star.
  translate(width, 0);
  rotate(radians(90));
  drawQuarter();

}
//Drawing the one quarter of the star.
void drawQuarter() {
  for (float x=width/2; x/SxPos==1; x+=10) {
    //  translate(width, height);
    // rotate(PI);
    line(SxPos, SyPos, FxPos, FyPos );
    SyPos+=1;
    FxPos-=1;
// Reseting the x,y positions to draw the star again 
    if (FxPos<0)
    {
      // stroke(random(255), random(255), random(255), 64);
      SxPos=width/2;
      SyPos=0;
      FxPos=width/2;
      FyPos=height/2;
      //frameRate(0);
    }
  }
}
