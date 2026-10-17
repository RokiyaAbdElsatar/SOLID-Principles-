

abstract class Machine {
  void printDocument();
  void scanDocument();
  void faxDocument();
}

class BasicPrinter implements Machine {
  @override
  void printDocument() {
    print('Printing document...');
  }

  @override
  void scanDocument() {
    throw UnimplementedError();
  }

  @override
  void faxDocument() {
    throw UnimplementedError();
  }
}
