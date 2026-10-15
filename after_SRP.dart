
void main(){
final student = Student(
  name: 'Ali',
  mathGrade: 80,
  scienceGrade: 90,
);

final calculator = CalculateAverage();
final average = calculator.calculateAverage(student.mathGrade, student.scienceGrade);

final report = StudentReport(average: average, student: student);

final display = DisplayReport();
display.printReport(report);

final databaseSaver = SaveToDatabase(student: student);
databaseSaver.saveToDatabase();
}

class Student {
  String name;
  double mathGrade;
  double scienceGrade;
  Student({
    required this.name,
    required this.mathGrade,
    required this.scienceGrade,
  });
}

class StudentReport {
  Student student;
  double average;
  StudentReport({required this.average, required this.student});
}

class DisplayReport {
  DisplayReport();
  void printReport(StudentReport student) {
    print('Student: ${student.student.name}');
    print('Math: ${student.student.mathGrade}');
    print('Science: ${student.student.scienceGrade}');
    print('Average: ${student.average}');
  }
}

class CalculateAverage {
  CalculateAverage();
  double calculateAverage(double mathGrade, double scienceGrade) {
    return (mathGrade + scienceGrade) / 2;
  }
}

class SaveToDatabase {
  Student student;
  SaveToDatabase({required this.student});

  void saveToDatabase() {
    print('Saving ${student.name} report to database...');
  }
}
