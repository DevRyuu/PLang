void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');

  seulgi.name = '동빠';
  seulgi.printNAmeAndBuilding();
  chorong.printNAmeAndBuilding();

  Employee.building = 'DS타워';

  seulgi.printNAmeAndBuilding();
  chorong.printNAmeAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  String name;

  Employee(
    this.name,
  );

  void printNAmeAndBuilding(){
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding(){
    print('저는 $building 건물에서 근무중입니다.');
  }
}