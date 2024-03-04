void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();
}

// interface: abstract (인스턴스로 사용하지 마라)
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName() {}
}

class BoyGroup implements IdolInterface{
  String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface{
  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
}