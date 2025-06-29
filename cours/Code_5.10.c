bool odd(int n);
bool even(int n){
  if (n==0)
    return true;
  else
    return odd(n-1);
}
bool odd(int n){
  if (n==0)
    return false;
  else
    return even(n-1);
}
