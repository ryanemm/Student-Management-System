class Assignment {
  final String title;
  final int id;
  final int totalMarks;
  final double averageMarks;

  const Assignment({
    required this.title,
    required this.id,
    required this.totalMarks,
    required this.averageMarks,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      title: json['title'] as String,
      id: json['id'] as int,
      totalMarks: json['totalMarks'] as int,
      averageMarks: json['averageMarks'] as double,
    );
  }
}
