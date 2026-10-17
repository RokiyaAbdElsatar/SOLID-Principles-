
class Bird {
  void fly() {
    print('Bird is flying');
  }
}

class Sparrow extends Bird {}

class Penguin extends Bird {
  @override
  void fly() {
    throw Exception('Penguins cannot fly!');
  }
}

void makeBirdFly(Bird bird) {
  bird.fly();
}

void main() {
  Bird sparrow = Sparrow();
  Bird penguin = Penguin();

  makeBirdFly(sparrow);
  makeBirdFly(penguin);
}
