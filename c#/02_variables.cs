using System;
using System.Collections.Generic;

class Variables
{
    static void Main(string[] args)
    {
        // 변수 선언 및 초기화
        string name = "Bard";
        int age = 1;
        bool isAlive = true;

        // 변수 출력
        Console.WriteLine("이름: " + name);
        Console.WriteLine("이름과 나이: " + name + age);
        Console.WriteLine("살아있는가요?: " + isAlive.ToString());

        // 변수 값 변경
        name = "LaMDA";
        age = 2;
        isAlive = false;

        // 자동 변수 할당
        var number = 10;
        Console.WriteLine("number: " + number.GetType().Name);

        dynamic myVariable; // 자료형 제한 없음 (변경가능)
        myVariable = "Hello";
        Console.WriteLine("myVariable: " + myVariable);
        myVariable = 100;
        Console.WriteLine("myVariable: " + myVariable);

        // 상수 선언 (변경 불가능)
        const double PI = 3.14;
        Console.WriteLine("PI: " + PI);

        DateTime now = DateTime.Now; // C#에서는 const 사용 불가능
        Console.WriteLine(now);

        // List
        List<string> languages = new List<string>() { "Dart", "Python", "Java" };
        Console.WriteLine("languages: " + string.Join(", ", languages));

        // Dictionary
        Dictionary<string, int> ages = new Dictionary<string, int>()
        {
            { "Bard", 1 },
            { "Python", 30 },
            { "Java", 25 }
        };
        Console.WriteLine("ages: " + string.Join(", ", ages));
    }
}
