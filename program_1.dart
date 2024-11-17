//program to store the even numbers in a new list

List<int> numbers = [2, 10, 5, 3, 6, 11];

List<int> printEven(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenNumbers.add(numbers[i]);
    }
  }
  return evenNumbers;
}

void main() {
  print(printEven(numbers));
}
