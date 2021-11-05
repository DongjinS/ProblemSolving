# 25	10872	하	재귀함수	팩토리얼	5

def factorial(n: int) -> int:
    if n > 0:
        return n * factorial(n-1)
    else:
        return 1
if __name__ == '__main__':
    n = int(input())
    print(factorial(n))

n = int(input())
facto_result = 1
for i in range(1,n+1):
    facto_result *= i
print(facto_result)