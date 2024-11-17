//program to find maximum and minimum number in an array
class FindMaxMin {
  List<int>? numbers;
  FindMaxMin(this.numbers);
  void printMinMax() {
    if (numbers == null || numbers!.isEmpty) {
      print("The list is empty");
      return;
    }
    int min = numbers![0];
    int max = numbers![0];
    for (int i = 0; i < numbers!.length; i++) {
      if (numbers![i] < min) {
        min = numbers![i];
      }
      if (numbers![i] > max) {
        max = numbers![i];
      }
    }
    print("Min value: $min");
    print("Max value: $max");
  }
}

void main() {
  FindMaxMin findMaxMin = FindMaxMin([2, 3, 5, 8, 10]);
  findMaxMin.printMinMax();
}
