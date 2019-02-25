// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

// Answer: 233168

void main() {
  const int limit = 1000;
  List<int> naturalNumbers = [3, 5];
  var multiples = List<int>();
  int sum = 0;
  naturalNumbers.forEach((number) {
    for (int i = number; i < limit; i += number) {
      multiples.add(i);
    }
  });
  // Converting the list to Set and then again to list removes the duplicate multiples.
  // For more on how this works check - https://api.dartlang.org/stable/1.10.1/dart-core/List/toSet.html
  multiples = multiples.toSet().toList();
  multiples.forEach((multiple) => sum += multiple);
  print(sum);
}
