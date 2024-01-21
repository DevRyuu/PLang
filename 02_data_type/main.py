# Number, String, List, Dictionary, Tuple, Set, NoneType

# Number(숫자형: int, float, bool)
x = 100
y = 400.1
z = True

print(f"type of x = {type(x)}")  # type of x=<class 'int'>
print(f"type of y = {y.__class__}")  # type of y=<class 'float'>
print(f"type of y's class = {y.__class__.__class__}")  # type of y's class=<class 'type'>
print(f"is z an int? {isinstance(z, int)}")  # is z an int? True
print(f"hexadecimal address of x = {hex(id(x))}")  # hexadecimal address of x=0x...
print(f"x is y ? {x is y}")  # x is y? False

# String(문자열: str)
a = "안녕하세요"
print(f"first character of a = {a[0]}")  # first character of a=안
print(f"length of a = {len(a)}")  # length of a=5

# List(리스트: list, 대괄호 안에 객체들을 순서대로 모아놓은 객체)
X = [
    {
        (1, 2, 3): ["강물", "야구", [100, 300]],
        "취미": ["스쿠버", "수영"]
    }
]
print(f"element in X = {X[0][(1, 2, 3)][2][1]}")  # element in X=300

# Dictionary(사전: dict, 중괄호 안에 객체들을 랜덤 순서대로 모아놓은 객체)
Y = {
    "age": 36,
    "name": "류종훈",
    "hobby": ["스쿠버", "수영", "경연프로그램 보기"],
    "last name": "Jasper",
    0: "0",
    1: 1
}
print(f"element in Y = {Y[0]}")  # element in Y=0
print(f"age in Y = {Y['age']}")  # age in Y=36
print(f"length of Y={len(Y)}")  # length of Y=5

# Tuple(튜플: tuple, 괄호 안에 객체들을 왼쪽에서 오른쪽 순서대로 모아놓은 객체)
Z = ("안녕하세요",)
b = ([1, 2, 3], (4, 5), {"이름": "류종훈", "나이": 36}, "한국")
print(f"is Z a tuple ? {isinstance(Z, tuple)}")  # is Z a tuple? True
print(f"class of Z = {Z.__class__}")  # class of Z=<class 'tuple'>
print(f"name in b = {b[2]['이름']}")  # name in b=류종훈
print(f"length of b = {len(b)}")  # length of b=4

# Set(세트: set, 중괄호 안에 객체들을 랜덤순서대로 모아 놓은 객체)
c = {"안녕하세요"}
print(f"type of c = {type(c)}")  # type of c=<class 'set'>

# NoneType(None, 존재하지 않는 또는 값이 없다를 정의하는 유형, 에러방지용 초기화에 사용)
d = None
print(f"type of d = {type(d)}")  # type of d=<class 'NoneType'>
