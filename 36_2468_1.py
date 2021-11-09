# 36	2468	상	완전 탐색	안전 영역
# 참고
# https://dojinkimm.github.io/problem_solving/2019/11/15/boj-2468-safezone.html
'''
입력
첫째 줄에는 어떤 지역을 나타내는 2차원 배열의 행과 열의 개수를 나타내는 수 N이 입력된다.
N은 2 이상 100 이하의 정수이다.
둘째 줄부터 N개의 각 줄에는 2차원 배열의 첫 번째 행부터 N번째 행까지 순서대로 한 행씩 높이 정보가 입력된다.
각 줄에는 각 행의 첫 번째 열부터 N번째 열까지 N개의 높이 정보를 나타내는 자연수가 빈 칸을 사이에 두고 입력된다. 높이는 1이상 100 이하의 정수이다.

출력
첫째 줄에 장마철에 물에 잠기지 않는 안전한 영역의 최대 개수를 출력한다.
'''
# 파이썬 인터프리터 stack에 최대 깊이를 지정하는 것이다.
# 무한대의 recursion이 발생해서 overflow가 발생하는 것을 방지하기 위함
import sys
sys.setrecursionlimit(100000)

#input
n = int(input())
local_height = []
height_max = 0
for i in range(n):
    local_height.append([int(x) for x in input().split()])
# print(local_height)

#print(max(map(max, local_height)))
#좌우 확인
dx = [0,-1,0,1]
#상하 확인용
dy = [-1,0,1,0]

def dfs(x:int, y:int, rain_height:int):
    #상하 좌우 확인
    for i in range(4):
        nx, ny = x + dx[i], y + dy[i]
        if 0 <= nx < n and 0 <= ny < n and not_sink_place[nx][ny] != 1 and local_height[nx][ny]>rain_height:
            #연속되는 안전지역은 더해줄 필요가 없음
            #safe_area+=1
            not_sink_place[nx][ny] = 1
            dfs(nx,ny,rain_height)
    return
temp = []
for rain_height in range(max(map(max, local_height))):
    safe_area = 0
    not_sink_place = [[0 for col in range(n)] for row in range(n)]  
    for i in range(len(local_height)):
        for j in range(len(local_height)):
            #좌표의 높이가 강수량보다 높고, 이미 안전지역으로 확인 된 곳이 아니면 함수 시작
            if local_height[i][j] > rain_height and not_sink_place[i][j] != 1:
                #안전지역 시작점에서만 더해줌
                safe_area+=1
                #안전지역으로 확인 됨을 not_sink_place[i][j]를 1로 바꿔줌으로 확인해준다
                not_sink_place[i][j] = 1
                dfs(i,j,rain_height)
    # print(safe_area)
    temp.append(safe_area)

# print(temp)

print(max(temp))
