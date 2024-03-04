void main() {
  // 인스턴스 생성
  Idol blackPink = Idol();  
  print(blackPink.name); // 변수 호출
  blackPink.sayHello(); // 메서드 호출

  CIdol bts = CIdol(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );
  print(bts.name);
  bts.sayHello();

  // fromList 생성자
  CIdol twice = CIdol.fromList(
    [
      '트와이스',
      ['모모', '사나', '쯔위', '다현'],
    ]
  );
  print(twice.members);
  twice.introduce();

  // const 생성자
  const IMIdol twiceConst = IMIdol(
    '트와이스',
    ['모모', '사나', '쯔위', '다현']
  );
  twiceConst.sayHello();

  GSIdol twiceGS = GSIdol(
    '트와이스',
    ['모모', '사나', '쯔위', '다현']
  );
  print(twiceGS.firstMemeber);
  twiceGS.firstMember = '류종훈';
  print(twiceGS.firstMemeber);
}

// 클래스 Idol | 변수 name, members | 함수 sayHello, introduce
class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello() {
    print('안녕하세요 $name 입니다.');
  }
  void introduce() {
    print('저희 멤버는 $members 입니다.');
  }
}

// 생성자(constructor)
class CIdol {
  String name;
  List<String> members;

  CIdol(this.name , this.members);

  CIdol.fromList(List values)
    : this.name = values[0],
      this.members = values[1];

  void sayHello() {
    print('안녕하세요 $name 입니다.');
  }
  void introduce() {
    print('저희 멤버는 $members 입니다.');
  }
}

// immutable 프로그래밍
class IMIdol {
  final String name;
  final List<String> members;

  IMIdol.fromList(List values)
    : this.name = values[0],
      this.members = values[1];

  const IMIdol(this.name , this.members);

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}

// getter | setter (데이터를 가져오거나 설정할때)
class GSIdol {
  String name;
  List<String> members;

  GSIdol.fromList(List values)
    : this.name = values[0],
      this.members = values[1];

  GSIdol(this.name , this.members);

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }
  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // getter
  String get firstMemeber{
    return this.members[0];
  }

  // setter (현대 프로그래밍은 immutable로 final을 지정하므로 setter는 거의 안씀)
  set firstMember(String name){
    this.members[0] = name;
  }

  // private
}