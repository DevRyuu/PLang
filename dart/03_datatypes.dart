class Point {
  final int x;
  final int y;

  // 생성자
  const Point(this.x, this.y);

  // toString() 오버라이드
  @override
  String toString() => 'Point($x, $y)';
}

// Signature
typedef Operation = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;
int subtract(int x, int y, int z) => x - y - z;
int calculate(int x, int y, int z, Operation operation){
  return operation(x, y, z);
}

void main(){
  int number1 = 2;
  int number2 = 4;
  double number3 = 2.5;
  double number4 = 0.5;
  bool isTrue = true;
  bool isFalse = false;
  String str1 = "류";
  String str2 = "종훈";
  String? name3 = null; // nullable 문자열형 변수 'name3' 선언 및 null 값 할당

  // 정수형
  print(number1 * number2);

  // 실수형
  print(number3 / number4);

  // 논리형
  print(isTrue && isFalse);

  // 문자열
  print(str1 + str2);

  // Null
  print(name3);

  // 참조 자료형
  // List
  List<String> languages = ["Dart", "Python", "Java"];
  print("languages: $languages");

  // Map
  Map<String, int> ages = {"Bard": 1, "Python": 30, "Java": 25};

  print("ages: $ages");


  // 추가 자료형
  // Records
  final point1 = Point(1, 2);
  final point2 = Point(3, 4);
  print(point1); // 'Point(1, 2)' 출력
  print(point2); // 'Point(3, 4)' 출력

  // Symbols
  final symbol1 = Symbol('my_symbol');
  final symbol2 = Symbol('my_symbol');
  print(symbol1 == symbol2); // false (Symbol은 동일한 이름이라도 서로 다른 객체)

  // Typedef
  int result = calculate(30, 40, 50, add);
  print(result);
  int result2 = calculate(30, 40, 50, subtract);
  print(result2);
}