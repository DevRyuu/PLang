void main() {
  print('-------- Idol --------------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);

  apink.sayName();
  apink.saymemberCount();

  print('--------------- Boy Group --------------------');
  BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayName();
  bts.saymemberCount();
  bts.sayMale();

  print('--------------- Girl Group --------------------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);

  redVelvet.sayName();
  redVelvet.saymemberCount();
  redVelvet.sayFemale();

  print('--------------- Type Comparison --------------------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('--------------- Type Comparison 2-------------------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

}

class Idol{
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName(){
    print('저는 ${this.name} 입니다.');
  }

  void saymemberCount(){
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

// 상속(inheritance) - 부모 클래스의 모든 속성을 자식클래스가 부여받음
class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int membersCount,
  ): super(
    name: name,
    membersCount: membersCount,
  );

  void sayMale(){
    print('저희는 남자 아이돌 입니다.');
  }
}

class GirlGroup extends Idol{
  GirlGroup(
    String name,
    int membersCount,
  ): super(
    name: name,
    membersCount: membersCount,
  );

  void sayFemale(){
    print('저희는 여자 아이돌 입니다.');
  }
}
