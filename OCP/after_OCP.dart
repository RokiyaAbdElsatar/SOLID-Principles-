abstract class DiscountStrategy {
  double calculate(double price);
}

class DiscountCalculator {
  double calculateDiscount(DiscountStrategy strategy, double price) {
    return strategy.calculate(price);
  }
}

class PercentageDiscount implements DiscountStrategy {
  double calculate(double price) {
    return price * 0.10;
  }
}

class FixedDiscount implements DiscountStrategy {
  double calculate(double price) {
    return 50;
  }
}

// Adding a new discount strategy without modifying existing code
class SeasonalDiscount implements DiscountStrategy {
  double calculate(double price) {
    return price * 0.20;
  }
}

void main() {
  final calculator = DiscountCalculator();
  print(calculator.calculateDiscount(FixedDiscount(), 1000));
  print(calculator.calculateDiscount(SeasonalDiscount(), 1500));
}
