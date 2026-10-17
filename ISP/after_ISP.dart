

abstract class Printer {
  void printDocument();
}
abstract class Scanner {
  void scanDocument();
}
abstract class FaxMachine {
  void faxDocument();
}
class MultiFunctionPrinter implements Printer, Scanner, FaxMachine {
  @override
  void printDocument() {
    print('Printing document...');
  }

  @override
  void scanDocument() {
    print('Scanning document...');
  }

  @override
  void faxDocument() {
    print('Faxing document...');
  }

}
class BasicPrinter implements Printer  {
  @override
  void printDocument() {
    print('Printing document...');
  }

}
