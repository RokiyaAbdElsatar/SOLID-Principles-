
class StudentReport {
  String studentName;
  double mathGrade;
  double scienceGrade;

  StudentReport({
    required this.studentName,
    required this.mathGrade,
    required this.scienceGrade,
  });

  double calculateAverage() {
    return (mathGrade + scienceGrade) / 2;
  }

  void printReport() {
    print('Student: $studentName');
    print('Math: $mathGrade');
    print('Science: $scienceGrade');
    print('Average: ${calculateAverage()}');
  }

  void saveToDatabase() {
    print('Saving $studentName report to database...');
  }
}

void main(){
  final student = StudentReport(
  studentName: 'Ali',
  mathGrade: 80,
  scienceGrade: 90,
);
  student.printReport();
  student.saveToDatabase();
}