int[] ints={8,9,1,5,11,13,7,4,6,3,12,10,2};
boolean done=false;

void setup()
{
  //println(sortInts(ints));
  // why on Earth would I use a while loop?
  // it's already sorted...
  // it's done.
  
  // alright fine then...
  while(!done)
  {
    sortWhile(ints);
  }
  println(ints);
}

int[] sortInts(int[] nums)
{
  for(int i=0;i<nums.length-1;++i)
  {
    for(int j=0;j<nums.length-1;++j)
    {
      if(nums[j]>nums[j+1])
      {
        int tmp=nums[j+1];
        nums[j+1]=nums[j];
        nums[j]=tmp;
      }
    }
  }
  return nums;
}

int[] sortWhile(int[] nums)
{
  done=true;
  for(int i=0;i<nums.length-1;++i)
  {
    if(nums[i]>nums[i+1])
    {
      done=false;
      int tmp=nums[i+1];
      nums[i+1]=nums[i];
      nums[i]=tmp;
    }
  }
  return nums;
}
