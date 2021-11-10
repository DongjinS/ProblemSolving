def dfs(start:int, now:int):
    global min_cost
    if len(visited) == len(city_map) and city_map[visited[n-1]][0] != 0:
        print(visited)
        # 경로 비용 구하기
        tmpcost = 0
        for i in range(len(visited)-1):
            tmpcost += city_map[visited[i]][visited[i+1]]
        tmpcost += city_map[visited[n-1]][0]
        print(tmpcost)
        min_cost = min(tmpcost, min_cost)

        #경로 비용 비교
        return

    for i in range(1,n):
        if i != start and city_map[now][i] != 0 and i not in visited:
            visited.append(i)
            dfs(start,i)
            visited.pop()
    
    return 


#입력
n = int(input())
city_map = []
for i in range(n):
    tmp = [int(x) for x in input().split()]
    city_map.append(tmp)
visited=[0]
# print(len(city_map))
min_cost = 1000000 * n
dfs(0,0)
print(f'final min cost: {min_cost}')