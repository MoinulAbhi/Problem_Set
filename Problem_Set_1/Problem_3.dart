List<int> generateFibonacci(int n) {
  List<int> fibonacciList = [];

  if (n >= 1) {
    fibonacciList.add(0);
  }
  if (n >= 2) {
    fibonacciList.add(1);
  }

  for (int i = 2; i < n; i++) {
    int nextFibonacci = fibonacciList[i - 1] + fibonacciList[i - 2];
    fibonacciList.add(nextFibonacci);
  }

  return fibonacciList;
}

void main() {
  int n = 10;
  List<int> result = generateFibonacci(n);
  print(result); // Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
}
