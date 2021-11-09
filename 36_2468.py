# 36	2468	상	완전 탐색	안전 영역
'''
입력
첫째 줄에는 어떤 지역을 나타내는 2차원 배열의 행과 열의 개수를 나타내는 수 N이 입력된다.
N은 2 이상 100 이하의 정수이다.
둘째 줄부터 N개의 각 줄에는 2차원 배열의 첫 번째 행부터 N번째 행까지 순서대로 한 행씩 높이 정보가 입력된다.
각 줄에는 각 행의 첫 번째 열부터 N번째 열까지 N개의 높이 정보를 나타내는 자연수가 빈 칸을 사이에 두고 입력된다. 높이는 1이상 100 이하의 정수이다.

출력
첫째 줄에 장마철에 물에 잠기지 않는 안전한 영역의 최대 개수를 출력한다.
'''
#input
n = int(input())
local_height = []
height_max = 0
for i in range(n):
    tmp = [int(x) for x in input().split()]
    #입력 받으면서 바로 최대 수위 수하기
    if height_max <  max(tmp):
        height_max = max(tmp)

    local_height.append(tmp)

# for i in local_height:
#     print(i)
# print(height_max)
#calc
# 1. 침수 판별하기 - 0 : not 침수 , 1: yes 침수
def DescriminateSink(height_max:int, local_height:list)->list:
    L = len(local_height)
    # print(L)
    ## 이중배열 선언 햇갈린다..
    sink_map = [[0 for col in range(L)] for row in range(L)]

    for i in range(len(local_height)):
        for j in range(len(local_height)):
            #좌표의 높이가 강수량 보다 같거나 낮으면 1 높으면 0 
            if local_height[i][j]<=height_max:
                sink_map[i][j] = 1
            else:
                sink_map[i][j] = 0
    #print(height_max)
    # for i in sink_map:
    #     print(i)
    return sink_map
#재귀 함수 - 안전영역 탐색 
def remove_conseq(safe_area_set:list, now_set:list, before_set: list, start_set:list)->list:
        #print(f'\nsafe_area_set: {safe_area_set}')
        #start_set 으로 연결 시작점은 삭제 하지 않도록 거르고 before_set으로 직전(상위 재귀)의 set으로 다시 재귀가 들어가지 않도록 막는다. 
        #하       
        if [now_set[0]+1, now_set[1]] != start_set and [now_set[0]+1, now_set[1]] != before_set and [now_set[0]+1, now_set[1]] in safe_area_set:
            #print(f'\n하 지금 재귀 들어가는 set: {now_set[0]+1, now_set[1]}, before_set: {[now_set[0],now_set[1]]}, start_set: {start_set}')
            if [now_set[0]+1, now_set[1]] in safe_area_set:
                safe_area_set.remove([now_set[0]+1, now_set[1]])
            safe_area_set = remove_conseq(safe_area_set, [now_set[0]+1, now_set[1]], [now_set[0],now_set[1]],start_set)
        #우
        if [now_set[0], now_set[1]+1] != start_set and [now_set[0], now_set[1]+1] != before_set and [now_set[0], now_set[1]+1] in safe_area_set:
            #print(f'\n우 지금 재귀 들어가는 set: {now_set[0], now_set[1]+1}, before_set: {[now_set[0],now_set[1]]}, start_set: {start_set}')
            if [now_set[0], now_set[1]+1] in safe_area_set:
                safe_area_set.remove([now_set[0], now_set[1]+1])
            safe_area_set = remove_conseq(safe_area_set, [now_set[0], now_set[1]+1],[now_set[0],now_set[1]],start_set)
        #상
        if [now_set[0]-1, now_set[1]] != start_set and [now_set[0]-1, now_set[1]] != before_set and [now_set[0]-1, now_set[1]] in safe_area_set:
            #print(f'\n상 지금 재귀 들어가는 set: {now_set[0]-1, now_set[1]}, before_set: {[now_set[0],now_set[1]]}, start_set: {start_set}')
            if [now_set[0]-1, now_set[1]] in safe_area_set:
                safe_area_set.remove([now_set[0]-1, now_set[1]])
            safe_area_set = remove_conseq(safe_area_set, [now_set[0]-1, now_set[1]],[now_set[0],now_set[1]],start_set)
        #좌 - 좌도 왼쪽부터 보니까 볼필요 없음
        if  [now_set[0], now_set[1]-1] != start_set and [now_set[0], now_set[1]-1] != before_set and [now_set[0], now_set[1]-1] in safe_area_set:
            #print(f'\n좌 지금 재귀 들어가는 set: {now_set[0], now_set[1]-1},  before_set: {[now_set[0],now_set[1]]}, start_set: {start_set}')
            if [now_set[0], now_set[1]-1] in safe_area_set:
                safe_area_set.remove([now_set[0], now_set[1]-1])
            safe_area_set = remove_conseq(safe_area_set, [now_set[0], now_set[1]-1],[now_set[0],now_set[1]],start_set)
        return safe_area_set

# 2. 침수 판별된 배열의 안전 영역 counting
def CountingSafeArea(descriminated_map:list)->int:
    L = len(descriminated_map)
    #print("L: ", L)
    safe_area_set = [] 
    # 침수 안된 곳 좌표로 다 갖고 있으면 좌표로 이어졌는지 아닌지 확인 가능..?!
    # 침수 안된 곳 개수 - 이어진 횟수 = 안전 지역
    for i in range(L):
        for j in range(L):
            # print(f'{i},{j}, descriminated_map[i][j] = {descriminated_map[i][j]}')
            if descriminated_map[i][j] == 0:
                safe_area_set.append([i,j])
    #print(f'안전영역 set : {safe_area_set}\nset 개수: {len(safe_area_set)}')
    #상하좌우 - 현재 i,j와 +- 1차이나는 좌표(i+-1, j+-1)가 한곳이라도 0 이면 이어져 있는것
    
    #재귀로 탐색
    for i in safe_area_set:
        #print(f'지금 들어가는 set: {i}')
        if [i[0]-1,i[1]] in safe_area_set or [i[0]+1,i[1]] in safe_area_set or [i[0],i[1]-1] in safe_area_set or [i[0],i[1]+1] in safe_area_set:
            remove_conseq(safe_area_set,i,i,i)

    # print(f'safe_area_set: {safe_area_set}')
    # for i in safe_area_set:
    #     print(i)
    #print(f'len - safe_area_set: {len(safe_area_set)}')
    return len(safe_area_set)

#최대 침수 강수량 부터 1씩 줄여나감
safe_countings = []
while height_max>0:
    #안전구역 계산해서 비교
    # 1. 침수 판별하기 - 0 : not 침수 , 1: yes 침수
    tmp2 = CountingSafeArea((DescriminateSink(height_max, local_height)))
    safe_countings.append(tmp2)
    # print(f"안전영역 개수: {tmp2}")
    # print("===================")
    height_max-=1
# print(safe_countings)
print(max(safe_countings))

# 임시
# tmp = (DescriminateSink(4, local_height))

# print(CountingSafeArea(tmp))
