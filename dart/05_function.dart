void main() {
  // 함수 호출
  addNumbers();

  // positional parameter를 이용한 함수 호출
  addNumbers2(10, 20, 30);
  
  // optional parameter를 이용한 함수 호출
  addNumbers3(50);
  addNumbers3(50, 40);

  // named parameter를 이용한 함수 호출
  addNumbers4(x: 10, y: 20, z: 10);
  addNumbers4(x: 10, y: 20);

  // 반환값을 사용하는 함수 호출
  int result1 = addNumbers5(y: 20, x: 10);
  print('result1: $result1');

  int result2 = addNumbers6(10, y: 20, z: 30);
  print('result2: $result2');

  int result = addNumbers5(x: 10, y: 20, z: 30);
  print('sum : ${result + result2}');
}

// 함수 정의
void addNumbers() {
  int x = 10;
  int y = 20;
  int z = 30;

  int sum = x + y + z;

  // 변수 출력
  print('x : $x');
  print('y : $y');
  print('z : $z');

  // 합이 짝수인지 홀수인지 출력
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// positional parameter를 이용한 함수 정의
void addNumbers2(int x, int y, int z) {
  int sum = x + y + z;

  // 합이 짝수인지 홀수인지 출력
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// optional parameter를 이용한 함수 정의
void addNumbers3(int x, [int y = 20, int z = 40]) {
  int sum = x + y + z;

  // 합이 짝수인지 홀수인지 출력
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// named parameter를 이용한 함수 정의
void addNumbers4({
  required int x,
  required int y,
  int z = 30,
}) {
  int sum = x + y + z;

  // 합이 짝수인지 홀수인지 출력
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// 반환값이 있는 함수 정의
int addNumbers5({
  required int x,
  required int y,
  int z = 30,
}) {
  int sum = x + y + z;

  // 합이 짝수인지 홀수인지 출력
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}

// arrow function을 이용한 함수 정의
int addNumbers6(int x, {required int y, int z = 30}) => x + y + z;
