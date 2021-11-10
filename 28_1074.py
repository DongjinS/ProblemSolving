# 28	1074	하	재귀함수	Z	5
'''
한수는 크기가 2N × 2N인 2차원 배열을 Z모양으로 탐색하려고 한다.
예를 들어, 2×2배열을 왼쪽 위칸, 오른쪽 위칸, 왼쪽 아래칸, 오른쪽 아래칸 순서대로 방문하면 Z모양이다.

N > 1인 경우, 배열을 크기가 2N-1 × 2N-1로 4등분 한 후에 재귀적으로 순서대로 방문한다.

N이 주어졌을 때, r행 c열을 몇 번째로 방문하는지 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 정수 N, r, c가 주어진다.

출력
r행 c열을 몇 번째로 방문했는지 출력한다.
'''
def Zfinder(n,x:int,y:int):
    cp = (2**n/2)

    total_path=0
    #cp가 1이 될때 까지 사분면 파악 - 반복마다 사분면 위치에 따라 경로 더해주고 cp 변화 (2**n/2)
    i = 1
    for _ in range(n):
        #1사분면
        if x<cp and y<cp:
            #1사분면은 경로 추가할 필요 없음
            total_path+=0
        #2사분면
        elif x<cp and y>=cp:
            total_path+=(2**(n-i))**2
        #3사분면
        elif x>=cp and y<cp:
            total_path+=((2**(n-i))**2)*2
        #4사분면
        elif x>=cp and y>=cp:
            total_path+=((2**(n-i))**2)*3
        #타겟 위치 변환
        if x >= cp:
            x -= cp
        if y >= cp:
            y -= cp
        cp = int((2**(n-i))/2)
        i += 1

    print(total_path)

#재귀로도 짜보기,,!
def RecursiveZfinder(n:int,x:int,y:int)->int:
    total_path=0
    if n<1:
        return 0
    cp = (2**n/2)
    #1사분면
    if x<cp and y<cp:
        #1사분면은 경로 추가할 필요 없음
        print("1")
        total_path = RecursiveZfinder(n-1,x,y)
        total_path+=0
    #2사분면
    elif x<cp and y>=cp:
        print("2")
        total_path = RecursiveZfinder(n-1,x,y-cp)
        total_path+=(2**(n-1))**2
        
    #3사분면
    elif x>=cp and y<cp:
        print("3")
        total_path = RecursiveZfinder(n-1,x-cp,y)
        total_path+=((2**(n-1))**2)*2
        
    #4사분면
    elif x>=cp and y>=cp:
        print("4")
        total_path = RecursiveZfinder(n-1,x-cp,y-cp)
        total_path+=((2**(n-1))**2)*3
        
    
    print(f'total_path: {total_path}')
    return total_path
    

input_list = [int(x) for x in input().split()]
n = input_list[0]
#row - 행 위치
x = input_list[1]
#col - 열 위치
y = input_list[2]
# Zfinder(n,x,y)
print(RecursiveZfinder(n,x,y))