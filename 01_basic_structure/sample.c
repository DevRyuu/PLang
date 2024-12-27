// C언어의 주요 특징
// 1. 절차지향적 언어 (Procedural Programming Language)
// 2. 하드웨어를 직접 제어할 수 있는 시스템 프로그래밍에 적합
// 3. 이식성이 높고 실행 속도가 빠름
// 4. 모듈화 프로그래밍 지원

// C언어 프로그램의 기본 구조
// 1. 전처리기 지시문 (#include, #define 등)
// 2. 전역 변수 선언 (필요한 경우)
// 3. 함수 정의 (main 함수 포함)
// 4. 프로그램 종료 (return 문)

#include <stdio.h>  // 표준 입출력 함수를 위한 헤더
#include <stdlib.h> // 메모리 할당, 난수 생성 등을 위한 헤더

/*
    main 함수
    - 모든 C 프로그램의 필수 진입점(entry point)
    - int main(void): 매개변수 없음, 정수 반환
    - 프로그램이 정상 종료되면 0을 반환
*/
int main(void)
{
    printf("Hello, C\n");  // 화면에 문자열 출력

    return 0;  // 프로그램 정상 종료
}