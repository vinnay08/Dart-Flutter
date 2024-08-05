//Q-47. Create a program using Set 

void main(List<String> args) {

  Set<int> numbers = {1, 2, 3, 4, 5};

  print("Initial set: $numbers");

  numbers.add(6);
  numbers.add(3); // Adding a duplicate element

  print("Set after adding elements: $numbers");

  numbers.remove(2);

  print("Set after removing an element: $numbers");

  bool containsFive = numbers.contains(5);
  print("Does the set contain 5? $containsFive");

  print("Iterating over the set:");
  for (int number in numbers) {
    print(number);
  }
}