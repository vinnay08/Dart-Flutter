//Q-48. Create a program using Map

void main(List<String> args) {
 
  Map<String, int> studentGrades = {
    'Alice': 90,
    'Bob': 85,
    'Charlie': 88,
  };

  print("Initial map: $studentGrades");

  studentGrades['David'] = 92;
  studentGrades['Eve'] = 95;

  print("Map after adding new entries: $studentGrades");

  studentGrades['Alice'] = 93;

  print("Map after updating Alice's grade: $studentGrades");

  studentGrades.remove('Bob');

  print("Map after removing Bob: $studentGrades");

  bool containsCharlie = studentGrades.containsKey('Charlie');
  print("Does the map contain Charlie? $containsCharlie");

  bool containsGrade92 = studentGrades.containsValue(92);
  print("Does the map contain the grade 92? $containsGrade92");

  print("Iterating over the map:");
  studentGrades.forEach((name, grade) {
    print("$name: $grade");
  });
}