class Person {
  String name;
  Person(this.name);
  void introduce() {
    print('My name is $name');
  }
}

void main() {
  // 산술 연산자
  print(2 + 3);
  print(3 - 2);
  print(2 * 3);
  print(3 / 2);
  print(3 ~/ 2); // 몫
  print(3 % 2); // 나머지

  // 할당 연산자: 값을 갱신하여 할당
  int number = 5;
  number += 2;
  number -= 2;
  number *= 2;
  number ~/= 2; // 2로 나눈 몫 할당
  number %= 2; // 2로 나눈 나머지 할당

  // Bitwise 연산자: 비트 단위 연산 수행
  int a = 5;
  int b = 3;
  print(a & b); // 1 (001 - AND 연산)
  print(a | b); // 7 (111 - OR 연산)
  print(a ^ b); // 6 (110 - XOR 연산)
  print(~a);    // -6 (음수를 포함한 2의 보수)
  print(a << 1); // 10 (1010 - 왼쪽 시프트)
  print(a >> 1); // 2 (10 - 오른쪽 시프트)

  // 논리 연산자
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue && isFalse); // and 조건
  print(isTrue || isFalse); // or 조건
  print(!isTrue);

  // 비교 연산자
  print(number == a);
  print(number != a);
  print(number < a);
  print(number <= a);
  print(number > a);
  print(number >= a);

  // 자료형검사 연산자
  print(number is int);
  print(4 is! String);

  // 증가감소 연산자
  number ++;
  print(number);

  a --;
  print(a);

  // null 병합 할당 연산자
  double number3 = 4.0;
  double? number4 = null;
  number3 ??= 3.0;
  number4 ??= 3.0; // null인 경우에만 바꾼다.
  print(number3);
  print(number4);

  // 조건적 멤버 접근 연산자 (객체가 null이 아닌 경우에만 멤버에 접근)
  Person? person = Person('Alice');
  person.introduce(); // 객체가 null이 아닐 때에만 introduce() 호출

  // Null-aware 연산자 (null일 때 대체값을 지정)
  int? nullableValue;
  int nonNullableValue = nullableValue ?? 10; // nullableValue가 null이면 10을 사용
  print(nonNullableValue);
}
