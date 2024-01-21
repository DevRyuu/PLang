#include <iostream>
#include <typeinfo>

using namespace std;

int main() {
    // Number(숫자형: int, float, bool)
    int x = 100;
    float y = 400.1;
    bool z = true;

    cout << "type of x = " << typeid(x).name() << endl;  // type of x=i
    cout << "type of y = " << typeid(y).name() << endl;  // type of y=f
    cout << "type of y's class = " << typeid(typeid(y)).name() << endl;  // type of y's class=St9type_info
    cout << "is z an int? " << (z ? "true" : "false") << endl;  // is z an int? true
    cout << "hexadecimal address of x = " << &x << endl;  // hexadecimal address of x=0x...
    cout << "x is y ? " << (x == y ? "true" : "false") << endl;  // x is y? False

    // Char(문자형: char, string과 char 배열 사용 가능)
    char ch = 'A';
    string str = "Hello";
    char charArray[] = "World";
    cout << "char value: " << ch << endl;  // char value: A
    cout << "string value: " << str << endl;  // string value: Hello
    cout << "char array value: " << charArray << endl;  // char array value: World
    
    // String(문자열: str)
    string a = "Hello";
    cout << "first character of a = " << a[0] << endl;  // first character of a=안
    cout << "length of a = " << a.length() << endl;  // length of a=5

    // List(리스트: list, 대괄호 안에 객체들을 순서대로 모아놓은 객체)
    // C++에는 리스트와 사전과 같은 직접적인 타입이 없으므로 이 예제는 생략합니다.

    // Dictionary(사전: dict, 중괄호 안에 객체들을 랜덤 순서대로 모아놓은 객체)
    // C++에는 사전과 같은 직접적인 타입이 없으므로 이 예제는 생략합니다.

    // Tuple(튜플: tuple, 괄호 안에 객체들을 왼쪽에서 오른쪽 순서대로 모아놓은 객체)
    // C++에는 튜플과 같은 직접적인 타입이 없으므로 이 예제는 생략합니다.

    // Set(세트: set, 중괄호 안에 객체들을 랜덤순서대로 모아 놓은 객체)
    // C++에는 세트와 같은 직접적인 타입이 없으므로 이 예제는 생략합니다.



    // List의 경우 int my_array[] = 방식으로 사용할 수 있다.
    int my_array[] = {1, 2, 3, 4, 5};
    cout << "element in my_array = " << my_array[2] << endl;  // element in my_array = 3

    // Sizeof 예제
    cout << "size of x (in bytes) = " << sizeof(x) << endl;  // size of x (in bytes) = 4
    cout << "size of y (in bytes) = " << sizeof(y) << endl;  // size of y (in bytes) = 4
    cout << "size of ch (in bytes) = " << sizeof(ch) << endl;  // size of ch (in bytes) = 1

    // NoneType(None, 존재하지 않는 또는 값이 없다를 정의하는 유형, 에러방지용 초기화에 사용)
    nullptr_t d = nullptr;
    cout << "type of d = " << typeid(d).name() << endl;  // type of d=std::nullptr_t

    return 0;
}
