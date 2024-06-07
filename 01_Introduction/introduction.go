/*
Windows용 실행명령어
go run ./01_Introduction/introduction.go

Linux용 실행명령어
cat ./01_Introduction/introduction.go

Windows용 빌드: exe파일 생성
go build

특정 파일 빌드
go build ./01_Introduction/introduction.go

특정 폴더에 파일 빌드
go build -o 01_Introduction/introduction.exe ./01_Introduction/introduction.go

Linux용 빌드
$Env:GOOS = "linux"
go build
$Env:GOOS = "windows" 환경설정값은 반드시 원래대로 돌려줘야 함
*/

package main

import "fmt"

func main() {
	fmt.Println("Hello World")
}

// This is a single-line comment

/*
This is a multiline comment
that spans multiple lines.
*/
