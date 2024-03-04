void main() {
  Lecture<String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdTyep();

  Lecture<int> lecture2 = Lecture(123, 'lecture2');

  lecture2.printIdTyep();
}

// generic - 타입을 외부에서 받을때 사용
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdTyep(){
    print(id.runtimeType);
  }
}