# 35	10971	중	완전 탐색	외판원 순회 2
from itertools import permutations
import sys

#조합마다 비용 계산
def CalcTravelCost(path: list, city_map: list):
    cost = 0
    # 시작점
    if city_map[0][path[0]] != 0: 
        #print(f'city_map[0][path[0]]: {city_map[0][path[0]]}')
        cost += city_map[0][path[0]]
    else:
        return 0 
    #중간 path 
    for i in range(n - 2):
        if city_map[path[i]][path[i+1]] != 0:
            #print(f'city_map[path{i}][path[{i+1}]]: {city_map[path[i]][path[i+1]]}')
            cost += city_map[path[i]][path[i+1]]
        else:
            return 0
    
    #마지막 path
    if city_map[path[n-2]][0] != 0:
        #print(f'city_map[{n-2}][0]: {city_map[n-2][0]}')
        cost += city_map[path[n-2]][0]
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


#시작점을 0으로 고정하고 n-1개 를 뽑으면
## n개를 뽑을 때 (0123 1230 3012 2103) - 세개 다 같은 것 or (1032 0321 3210 2103) 같은 거 없앨 수 있다? 
# for i in permutations(range(1,n)):
#     print(i)

#배열 만들어서 최솟값 찾기
costs = []
for i in permutations(range(1,n)):
    #print(i)
    cost = CalcTravelCost(i,city_map)
    #print(cost)
    if cost != 0:
        costs.append(cost)
# print(costs, len(costs))
print(min(costs))
