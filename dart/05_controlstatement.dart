enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  // 조건문
  int number = 3;
  if (number % 3 == 0) {
    print('나머지 0');
  } else if (number % 3 == 1) {
    print('나머지 1');
  } else {
    print('나머지 2');
  }

  switch (number % 3) {
    case 0:
      print('나머지 0');
      break;

    case 1:
      print('나머지 1');
      break;

    case 2:
      print('나머지 2');
      break;
  }

  // 반복문
  int total = 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // for문
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print('for문 결과: $total');

  // for-in문
  total = 0;
  for (int number in numbers) {
    total += number;
  }
  print('for-in문 결과: $total');

  // while문
  total = 0;
  while (total < 10) {
    total += 1;
  }
  print('while문 결과: $total');

  // break, continue를 이용한 반복문 제어
  total = 0;
  while (total < 10) {
    total += 1;
    if (total == 5) {
      break;
    }
  }
  print('break를 이용한 반복문 제어 결과: $total');

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue; // 현재 loop를 skip
    }
    print(i);
  }

  // enum 활용
  Status status = Status.pending;
  switch (status) {
    case Status.approved:
      print('승인입니다.');
      break;
    case Status.pending:
      print('대기입니다.');
      break;
    case Status.rejected:
      print('거절입니다.');
      break;
  }
}