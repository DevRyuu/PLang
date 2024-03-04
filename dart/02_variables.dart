void main() {
  // 변수 선언 및 초기화
  String name = "Bard";
  int age = 1;
  bool isAlive = true;

  // 변수 출력
  print("이름: $name");
  print("이름과 나이: $name$age");
  print("살아있는가요?: ${isAlive.toString()}");

  // 변수 값 변경
  name = "LaMDA";
  age = 2;
  isAlive = false;

  // 자동 변수 할당
  var number = 10;
  print("number: ${number.runtimeType}");

  dynamic myVariable; // 자료형 제한 없음 (변경가능)
  myVariable = "Hello";
  print("myVariable: $myVariable");
  myVariable = 100;
  print("myVariable: $myVariable");

  // 상수 선언 (변경 불가능)
  const double PI = 3.14;
  print("PI: $PI");

  final DateTime now = DateTime.now(); // const는 build time을 알아야 사용가능
  print(now);

  // List
  List<String> languages = ["Dart", "Python", "Java"];
  print("languages: $languages");

  // Map
  Map<String, int> ages = {"Bard": 1, "Python": 30, "Java": 25};
  print("ages: $ages");
}