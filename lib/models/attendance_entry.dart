class AttendanceEntry {
  final int id;
  final String name;
  final int age;

  AttendanceEntry({this.id, this.name, this.age});

  factory AttendanceEntry.fromJson(Map<String, dynamic> json) {
    return AttendanceEntry(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}
