void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];


  Map<String, double> avgScores = {
    for (var student in students)
      student['name']: double.parse(
        ((student['scores'] as List<int>).reduce((a, b) => a + b) /
                (student['scores'] as List<int>).length)
            .toStringAsFixed(2))
  };

 
  var sortedEntries = avgScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  Map<String, double> sortedMap = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  
  print("{");
  sortedMap.forEach((key, value) {
    print('  "$key": ${value.toStringAsFixed(2)},');
  });
  print("}");
}
