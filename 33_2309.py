# 33	2309	하	완전 탐색	일곱 난쟁이	
#문제
'''
왕비를 피해 일곱 난쟁이들과 함께 평화롭게 생활하고 있던 백설공주에게 위기가 찾아왔다. 
일과를 마치고 돌아온 난쟁이가 일곱 명이 아닌 아홉 명이었던 것이다.
아홉 명의 난쟁이는 모두 자신이 "백설 공주와 일곱 난쟁이"의 주인공이라고 주장했다.
뛰어난 수학적 직관력을 가지고 있던 백설공주는, 다행스럽게도 일곱 난쟁이의 키의 합이 100이 됨을 기억해 냈다.
아홉 난쟁이의 키가 주어졌을 때, 백설공주를 도와 일곱 난쟁이를 찾는 프로그램을 작성하시오.
'''
# 입력
'''
아홉 개의 줄에 걸쳐 난쟁이들의 키가 주어진다. 
주어지는 키는 100을 넘지 않는 자연수이며, 아홉 난쟁이의 키는 모두 다르며, 
가능한 정답이 여러 가지인 경우에는 아무거나 출력한다.
'''
# 출력
'''일곱 난쟁이의 키를 오름차순으로 출력한다. 일곱 난쟁이를 찾을 수 없는 경우는 없다.'''
from itertools import combinations
#난쟁이 명수 - 9명
n = 9 
#dwarf 라는 리스트에 난쟁이 키들 저장
dwarfs = []
for i in range(9):
    dwarfs.append(int(input()))
#난쟁이 7명 키의 합은 100이다
#더해서 100이 되는 난쟁이 조합 찾기
oringial_dwarfs = []
#구현,,
# for i in range(n-7):
#     for j in range(i,n,1):
#일단 내장 함수 사용
seven_dwarfs = list(combinations(dwarfs,7))
# print(seven_dwarfs, len(seven_dwarfs))
for i in seven_dwarfs:
    if sum(i) == 100:
        oringial_dwarfs = list(i)
        break
#print(oringial_dwarfs)
#100이 되는 조합 찾으면 오름차순으로 출력
# 버블 ?, 퀵,,?ㅜㅜ
def bubble_2(input_list: list):
    #print("bubble_2")
    L = len(input_list)
    #print(input_list)
    cnt=0
    k = 0
    while k < L - 1:
        # 한번도 바꿀일 없으면 = 이미 정렬되어 있으면 바로 끝나도록 last = L - 1
        last = L - 1
        for j in range(L - 1, k , -1):
            if input_list[j-1] > input_list[j]:
                #cnt+=1
                #print(f'비교!{cnt}')
                input_list[j], input_list[j-1] = input_list[j-1], input_list[j]
                last = j
        k = last

    for i in input_list:
        print(i)

bubble_2(oringial_dwarfs)
# 정렬 내장함수 - 사용안해도 통과
# oringial_dwarfs.sort()
# for i in oringial_dwarfs:
#     print(i)
