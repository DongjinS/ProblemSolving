# 34	10819	중	완전 탐색	차이를 최대로
'''
문제
N개의 정수로 이루어진 배열 A가 주어진다. 이때, 배열에 들어있는 정수의 순서를 적절히 바꿔서 다음 식의 최댓값을 구하는 프로그램을 작성하시오.

|A[0] - A[1]| + |A[1] - A[2]| + ... + |A[N-2] - A[N-1]|

입력
첫째 줄에 N (3 ≤ N ≤ 8)이 주어진다. 둘째 줄에는 배열 A에 들어있는 정수가 주어진다. 
배열에 들어있는 정수는 -100보다 크거나 같고, 100보다 작거나 같다.

출력
첫째 줄에 배열에 들어있는 수의 순서를 적절히 바꿔서 얻을 수 있는 식의 최댓값을 출력한다.
'''
from itertools import permutations
n = int(input())
numbers=[int(x) for x in input().split()]

#최대 크기를 가진 조합 찾기
permu_numbers=list(permutations(numbers,n))
# print(permu_numbers)
#--------
max_sum = []
for p in (permu_numbers):
    temp_max = 0
    for i in range(len(p)-1):
        temp_max+=abs(p[i]-p[i+1])
    max_sum.append(temp_max)
print(max(max_sum))