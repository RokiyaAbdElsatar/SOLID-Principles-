abstract class Bird {
  void eat() {
    print('bird is eating');
  }
}

class FlyingBird extends Bird {
  void fly() {
    print(' bird is flying');
  }
}

class Sparrow extends FlyingBird {
  @override
  void fly() {
    print('Sparrow is flying');
  }
}

class Penguin extends Bird {
  
}

void makeBirdFly(FlyingBird bird) {
  bird.fly();
}

void main() {
  FlyingBird sparrow = Sparrow();
  Bird penguin = Penguin();

  makeBirdFly(sparrow);
  
  void makeBirdEat(Bird bird) { // to test the LSP, we can use the Bird class instead of the specific subclasses
    bird.eat();
  }
  makeBirdEat(penguin);
  makeBirdEat(sparrow);
}
