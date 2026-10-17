abstract class DataBase{
  void save(String data);
}

class MySQLDatabase implements DataBase {
  @override
  void save(String data) {
    print('Saving $data to MySQL');
  }
}
class FirebaseDatabase implements DataBase {
  @override
  void save(String data) {
    print('Saving $data to Firebase');
  }
}

class StudentService {
  final DataBase database;

  StudentService(this.database);

  void save(String studentName) {
    database.save(studentName);
  }
}

void main() {
  final service = StudentService(MySQLDatabase());
  final service2 = StudentService(FirebaseDatabase());
  service.save('Ali');
  service2.save('Asil');
}