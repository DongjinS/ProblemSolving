# 35	10971	중	완전 탐색	외판원 순회 2
from itertools import permutations
import sys

#조합마다 비용 계산
def CalcTravelCost(path: list, city_map: list):
    cost = 0
    for i in range(n - 1):
        if city_map[path[i]][path[i+1]] != 0:
            cost += city_map[path[i]][path[i+1]]
        else:
            return 0
    
    #돌아가는 비용
    if city_map[path[n-1]][path[0]] != 0:
        cost += city_map[path[n-1]][path[0]]
    else:
        return 0
    return cost

#입력
n = int(input())
city_map = []
for i in range(n):
    tmp = [int(x) for x in input().split()]
    city_map.append(tmp)
# city_map = [list(map(int, sys.stdin.readline().split())) for _ in range(n)]

#조합 만들기
#permutation 쓰면 tuple 형태로
# permu_city = list(permutations(range(n)))

## 조합 전체 만들어서 저장하면 메모리 초과!!

# #배열 없이 최솟값 찾기
# for i in city_map:
#     minimum += sum(i)
# print(minimum)

# minimum =  1000000 * 10
# for i in permutations(range(n)):
#     cost = CalcTravelCost(i,city_map)
#     if cost != 0:
#         if minimum > cost:
#             minimum = cost
# print(minimum)

#배열 만들어서 최솟값 찾기
costs = []
for i in permutations(range(n)):
    cost = CalcTravelCost(i,city_map)
    if cost != 0:
        costs.append(cost)
# print(costs, len(costs))
print(min(costs))
