class AttendanceEntry {
  final int studentId;
  final String studentName;
  final String date;
  final int present;

  const AttendanceEntry({
    required this.studentId,
    required this.studentName,
    required this.date,
    required this.present,
  });

  factory AttendanceEntry.fromJson(Map<String, dynamic> json) {
    return AttendanceEntry(
      studentId: json['studentId'] as int,
      studentName: json['studentName'] as String,
      date: json['date'] as String,
      present: json['present'] as int,
    );
  }
}
