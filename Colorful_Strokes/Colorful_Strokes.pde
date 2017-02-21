int circleCount = 100;
float [] Xs = new float [circleCount];
float [] Ys = new float [circleCount];
float x = 0;
int limit = 0;
boolean Background = false;
float [] directionX = new float [circleCount];
float [] directionY = new float [circleCount];

void setup()
{
  fullScreen(P2D);
  if (Background == false)
  {
    background(0);
  }
  colorMode(RGB);
  //  START    CONDITION  STEP
  for (int i=0; i<circleCount; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random(height);

    directionX[i] =random(-1, 1);
    directionY[i] =random(-1, 1);
  }
  Xs[1] = random(width);
  Ys[1] = random(height);
}

void draw()
{
  if (Background == true)
  {
    background(0);
  }

  if (limit<100)
  {
    for (int i=0; i<circleCount; i++)
    {
      fill(random( 0, 255), random( 0, 255), random( 0, 255), 0);
      stroke(random( 0, 255), random( 0, 255), random( 0, 255), 175);
      ellipse(Xs[i], Ys[i], 100, 100);
      Xs[i] = random(width);
      Ys[i] = random(height);
      limit = limit +1;
      Background = false;
    }
  }

  if (limit>=100)
  {
    for (int i=0; i<circleCount; i++)
    {
      fill(random( 0, 255), random( 0, 255), random( 0, 255), 0);
      stroke(random( 0, 255), random( 0, 255), random( 0, 255), 175);
      ellipse(Xs[i], Ys[i], 100, 100);
      // Xs[i] +=random(5);
      // Ys[i] +=random(5);
      Background = true;
      Xs[i]+=5*directionX[i];
      if (Xs[i]>width-50)
      {
        directionX[i]=-directionX[i];
      }
      if (Xs[i]<0+50)
      {
        directionX[i]=-directionX[i];
      }
      Ys[i]+=5*directionY[i];
      if (Ys[i]>height-50)
      {
        directionY[i]=-directionY[i];
      }
      if (Ys[i]<0+50)
      {
        directionY[i]=-directionY[i];
      }
    }
  }
}