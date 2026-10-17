class MySQLDatabase {
  void save(String data) {
    print('Saving $data to MySQL');
  }
}

class StudentService {
  final MySQLDatabase database = MySQLDatabase();

  void saveStudent(String studentName) {
    database.save(studentName);
  }
}

void main() {
  final service = StudentService();
  service.saveStudent('Ali');
}