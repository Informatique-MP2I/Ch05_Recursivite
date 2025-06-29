#include <stdio.h>

int v(int n);
int u(int n){
  if(n==0){
    return 2;
  }
  else{
    return u(n-1) - u(n-1)*v(n-1);
  }
}

int v(int n){
  if (n==0) {
    return 3;
  }
  else{
    return v(n-1) + u(n-1)*v(n-1);
  }
}

int main(int argc, char **argv){
  int n = 2;
  printf("for n=%d, u=%d and v=%d\n", n, u(n), v(n));
  
  return 0;
}

