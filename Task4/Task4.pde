int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

void setup()
{
  printDivisible(7);
  println();
  println(arrRnd(arr));
  println();
  printRecurs(5);
  println();
  fibonacciRecurs(1,1);
}

void printDivisible(int n)
{
  for(int i=0;i<100;++i)if(i%n==0)println(i);
}

int arrRnd(int[] nums)
{
  return nums[(int)random(0,nums.length-1)];
}

int printRecurs(int n)
{
  println(n);
  if(n==0)return 0;
  return printRecurs(n-1);
}

int fibonacciRecurs(int a,int b)
{
  println(a+"\t"+b);
  if(b>10000)return 0;
  return fibonacciRecurs(b,a+b);
  
  // I deliberatly print the result that puts it over 10000.
}
