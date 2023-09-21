int findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("The list is empty");
  }

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  return largest;
}

void main() {
  List<int> numbers = [5, 12, 9, 42, 25];
  int largestNumber = findLargestNumber(numbers);
  print("The largest number is: $largestNumber");
}
