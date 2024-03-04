void main() {
  // Group 클래스의 인스턴스 생성
  Group blackPink = Group();  
  print(blackPink.groupName); // 변수 호출
  blackPink.sayHello(); // 메서드 호출

  // _SecretClass의 인스턴스를 생성하여 private 클래스
  _SecretClass secret = _SecretClass();
  secret._secretMethod();
  print(secret._secretVariable);

  // IdolGroup 클래스의 인스턴스 생성
  IdolGroup bts = IdolGroup(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );
  print(bts.groupName);
  bts.sayHello();

  // fromList 생성자를 사용하여 IdolGroup의 인스턴스 생성
  IdolGroup twice = IdolGroup.fromList(
    [
      '트와이스',
      ['모모', '사나', '쯔위', '다현'],
    ]
  );
  print(twice.members);
  twice.introduce();

  // const 생성자를 사용하여 ImmutableGroup의 인스턴스 생성
  const ImmutableGroup twiceConst = ImmutableGroup(
    '트와이스',
    ['모모', '사나', '쯔위', '다현']
  );
  twiceConst.sayHello();
}

// Group 클래스 | 변수 groupName, members | 함수 sayHello, introduce
class Group {
  String groupName = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello() {
    print('안녕하세요 $groupName 입니다.');
  }
  void introduce() {
    print('저희 멤버는 $members 입니다.');
  }
}

// _SecretClass: private 예제를 위한 클래스
class _SecretClass {
  String _secretVariable = '비밀';

  void _secretMethod() {
    print('이것은 비밀입니다.');
  }
}

// IdolGroup 클래스
class IdolGroup {
  String groupName;
  List<String> members;

  IdolGroup(this.groupName , this.members);

  IdolGroup.fromList(List values)
    : this.groupName = values[0],
      this.members = values[1];

  void sayHello() {
    print('안녕하세요 $groupName 입니다.');
  }
  void introduce() {
    print('저희 멤버는 $members 입니다.');
  }
}

// ImmutableGroup 클래스
class ImmutableGroup {
  final String groupName;
  final List<String> members;

  ImmutableGroup.fromList(List values)
    : this.groupName = values[0],
      this.members = values[1];

  const ImmutableGroup(this.groupName , this.members);

  void sayHello() {
    print('안녕하세요 ${this.groupName} 입니다.');
  }
  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
