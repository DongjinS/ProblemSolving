# 21	1978	하	수학	소수 찾기
'''
문제
주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.

입력
첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.

출력
주어진 수들 중 소수의 개수를 출력한다.
'''
n = int(input())
numbers = map(int, input().split())
cnt_primes=0
for i in numbers:
    prime = 0
    if i > 2 :
        for divisor in range(2,i):
            #소수 아님
            if i%divisor == 0:
                prime = 0
                break
            #소수
            else:
                prime = 1
        if prime == 1:
            cnt_primes+=1
    elif i == 2:
        cnt_primes+=1
print(cnt_primes)