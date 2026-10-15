
class DiscountCalculator {
  double calculateDiscount(String type, double price) {
    if (type == 'percentage') {
      return price * 0.10;
    } else if (type == 'fixed') {
      return 50;
    }

    return 0;
  }
}

void main() {
  final calculator = DiscountCalculator();

  print(calculator.calculateDiscount('percentage', 1000));
  print(calculator.calculateDiscount('fixed', 1000));
}
