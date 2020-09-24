int[][] board=new int[8][8];

void setup()
{
  size(350,350);
  
  for(int i=0;i<8;++i)
  {
    for(int j=0;j<8;++j)
    {
      if(i%2==0)
      {
        if(j%2==0)board[i][j]=1;
        if(j%2==1)board[i][j]=0;
      }
      if(i%2==1)
      {
        if(j%2==0)board[i][j]=0;
        if(j%2==1)board[i][j]=1;
      }
    }
  }
}

void draw()
{
  int sideLength=40;
  
  for(int i=0;i<8;++i)
  {
    for(int j=0;j<8;++j)
    {
      if(board[i][j]==0)fill(0);
      if(board[i][j]==1)fill(255);
      rect(j*sideLength,i*sideLength,sideLength,sideLength);
    }
  }
}
