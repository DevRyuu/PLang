// Java 언어의 주요 특징
// 1. 객체지향적 언어 (Object-Oriented Programming Language)
// 2. 플랫폼 독립적 (Write Once, Run Anywhere)
// 3. 자동 메모리 관리 (Garbage Collection)
// 4. 풍부한 표준 라이브러리 제공 (Java API)
// 5. 멀티쓰레드 프로그래밍 기본 지원
// 6. 동적 로딩을 통한 유연한 프로그램 실행

// Java 프로그램의 기본 구조
// 1. 패키지 선언 (package statement)
// 2. import문 선언 (필요한 클래스 import)
// 3. 클래스 선언 (public class)
// 4. main() 메소드 선언 (프로그램 진입점)

/*
    Sample 클래스
    - Java 프로그램의 기본 구조를 보여주는 예제
    - public class는 파일명과 동일해야 함
    - 모든 Java 프로그램은 최소 하나의 클래스가 필요
*/
public class Sample {
    /*
        main 메소드
        - Java 프로그램의 필수 진입점(entry point)
        - public static void main(String[] args): 표준 시그니처
        - args: 명령행 매개변수를 저장하는 문자열 배열
    */
    public static void main(String[] args) {
        System.out.println("Hello, Java");  // 표준 출력 스트림에 문자열 출력
    }
}
