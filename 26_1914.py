# 26	1914	하	재귀함수	하노이 탑	5-3

'''
세 개의 장대가 있고 첫 번째 장대에는 반경이 서로 다른 n개의 원판이 쌓여 있다. 각 원판은 반경이 큰 순서대로 쌓여있다. 이제 수도승들이 다음 규칙에 따라 첫 번째 장대에서 세 번째 장대로 옮기려 한다.

한 번에 한 개의 원판만을 다른 탑으로 옮길 수 있다.
쌓아 놓은 원판은 항상 위의 것이 아래의 것보다 작아야 한다.
이 작업을 수행하는데 필요한 이동 순서를 출력하는 프로그램을 작성하라. 단, 이동 횟수는 최소가 되어야 한다.
'''
"""
6 - x - y 이유 
        x(원반의 현재 기둥), y(목표 기둥)이 가능한 숫자는 {1,2,3}. 기둥의 위치를 나타내는 1,2,3의 합은 6
        상위 함수(재귀에서 현재 함수를 부른 함수)의 현재 기둥,x 에서 목표기둥,y 을 6에서 빼면
        현재 함수의 목표(상위함수의 원반이 없고 목표도 아닌 기둥)을 구할 수 있다.

횟수를 어떻게 반환할 것인가
        - 재귀로 횟수 구하지 않고 공식을 통해 출려?
        - 문제 자체가 경로 출력하는 데에 초점이 있는 문제였음
        - 근데 왜 틀려 - 출력 방식 문제: 입력이 20일 때 출력이 없었음

"""
def move(no: int, x:int, y:int, cnt:int, path_list=[]):
    #과정도 저장해서 출력해주려면 return으로 과정 배열 받고 횟수 int 받고 하면 너무 복잡해짐...ㅠㅠ
    if no==1:
        #맨 위 원반 움직임 더함 // 재귀 끝에서 +1
        print(f'{x} {y}') 
        path_list.append([x,y])
        return cnt + 1
    
    if no>1:
        cnt = move(no-1,x,6-x-y, cnt)

    print(f'{x} {y}') 
    path_list.append([x,y])
    # 맨위 원반 제외한 원반(가상 그룹(e.g. 총 3개일때 2개)의 바닥 원반)의 움직임 더함 // 재귀 나오면서 +1
    cnt += 1
    
    if no>1: 
        cnt = move(no-1,6-x-y,y, cnt)
    
    print(path_list)
    return cnt

N = int(input())
cnt = 0
#횟수 출력
if N > 20:
    print(2**N - 1)
#이동과정 출력
if N <= 20:
    print(2**N - 1)
    print(move(N,1,3,cnt))

'''
다르게 푸는 방식..;;
#include<stdio.h>

int hanoi(int n ) {

	if (n == 1) {

		return n;

	}

	else {

		return hanoi(n - 1) + hanoi(n - 1) + 1;

		

	}

		

}

int main() {

	int n;

	scanf("%d", &n);

	printf("%d", hanoi(n));

	return 0;

}



출처: https://chickeneathoshii.tistory.com/6 [치킨먹고싶다]
'''