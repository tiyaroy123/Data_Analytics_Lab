maximum=function(a,b,c)
{
  max=a;
  if(b>max)
    max=b;
  if(c>max)
    max=c;
  return(max);
}

calculate_sum=function(n)
{
  if(n <= 1) {
    return(n)
  } else {
    return(n + calculate_sum(n-1))
  }
}
