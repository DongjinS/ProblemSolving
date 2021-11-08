# 27	9663	중	재귀함수	N-Queen	5-4
'''
문제
N-Queen 문제는 크기가 N × N인 체스판 위에 퀸 N개를 서로 공격할 수 없게 놓는 문제이다.

N이 주어졌을 때, 퀸을 놓는 방법의 수를 구하는 프로그램을 작성하시오.

입력
첫째 줄에 N이 주어진다. (1 ≤ N < 15)

출력
첫째 줄에 퀸 N개를 서로 공격할 수 없게 놓는 경우의 수를 출력한다.
'''


def put(n:int) -> None:
    #각 열에 배치한 퀸의 위치를 출력
    for i in range(n):
        print(f'{pos[i]:2}', end='')
    print()
    
def set(i:int, n:int, cnt:list)->None:
    #i열의 알맞은 위치에 퀸을 배치
    for j in range(n):
        if (    not flag_a[j]
            and not flag_b[i+j]
            and not flag_c[i-j+n-1]):
            pos[i] = j
            if i == n-1:
                #put(n)
                #print(pos)
                cnt.append(pos)
            else:
                flag_a[j] = flag_b[i+j] = flag_c[i-j+n-1] = True
                set(i+1, n, cnt)
                flag_a[j] = flag_b[i+j] = flag_c[i-j+n-1] = False




n = int(input())
cnt = []

pos = [0] * n
flag_a = [False] * n
flag_b = [False] * ((n*2)-1)
flag_c = [False] * ((n*2)-1)

set(0, n, cnt)
print(len(cnt))
