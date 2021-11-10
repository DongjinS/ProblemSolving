## 문제
# 한수는 크기가 2N × 2N인 2차원 배열을 Z모양으로 탐색하려고 한다. 
# 예를 들어, 2×2배열을 왼쪽 위칸, 오른쪽 위칸, 왼쪽 아래칸, 오른쪽 아래칸 순서대로 방문하면 Z모양이다.
# N > 1인 경우, 배열을 크기가 2N-1 × 2N-1로 4등분 한 후에 재귀적으로 순서대로 방문한다.
# N이 주어졌을 때, r행 c열을 몇 번째로 방문하는지 출력하는 프로그램을 작성하시오.

## 입력
# 첫째 줄에 정수 N, r, c가 주어진다.

## 출력
# r행 c열을 몇 번째로 방문했는지 출력한다.

import sys

N, r, c = map(int, sys.stdin.readline().split())

visit_count = 0
def visit_cal(N, r, c):
    global visit_count
    
    if N == 1 :
        if r == 0 and c ==0 :
            visit_count += 0
        elif r == 0 and c == 1 :
            visit_count += 1
        elif r == 1 and c == 0 :
            visit_count += 2
        elif r ==1 and c == 1 :
            visit_count += 3
        return 0

    half = (2 ** N) // 2
    if r < half and c < half :
        pass
    elif r < half and c >= half :
        visit_count += (half ** 2) * 1
        c -= half
    elif r >= half and c < half :
        visit_count += (half ** 2) * 2
        r -= half
    elif r >= half and c >= half :
        visit_count += (half ** 2) * 3
        c -= half
        r -= half
    
    return visit_cal(N-1, r, c)


visit_cal(N, r, c)
print(visit_count)