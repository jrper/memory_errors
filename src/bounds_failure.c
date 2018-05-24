
void set(int* a) {
  int i;

  for (i=0; i<=10; ++i) {
    a[i] = i;
  }
}

int main(void) {

  int a[10], b[11];

  set(a);

  return 0;
}

