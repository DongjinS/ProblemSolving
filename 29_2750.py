# 29	2750	하	정렬	수 정렬하기	6-1 ~ 6-4
 # -- 버블, 단순 선택, 단순 삽입까지
#bubble sorting  
#방법 1
def bubble_1(input_list: list):
    print("bubble_1")
    L = len(input_list)
    #print(input_list)
    cnt=0
    for i in range(L - 1):
        exchange = 0
        for j in range(L - 1, i, -1):
            #print(f'i = {i}, j = {j}')
            #print(f'input_list[{j}]={input_list[j]} : input_list[{j-1}]={input_list[j-1]}')
            if input_list[j-1]>input_list[j]:
                cnt+=1
                print(f"비교! {cnt}")
                input_list[j-1], input_list[j] = input_list[j], input_list[j-1]
                #print(f'교환! {input_list}') 
                exchange = 1
        if exchange != 1:
            break
    for i in input_list:
        print(i)
# 방법2
def bubble_2(input_list: list):
    print("bubble_2")
    L = len(input_list)
    #print(input_list)
    cnt=0
    k = 0
    while k < L - 1:
        # 한번도 바꿀일 없으면 = 이미 정렬되어 있으면 바로 끝나도록 last = L - 1
        last = L - 1
        for j in range(L - 1, k , -1):
            if input_list[j] < input_list[j-1]:
                cnt+=1
                print(f'비교!{cnt}')
                input_list[j], input_list[j-1] = input_list[j-1], input_list[j]
                last = j
        k = last

    for i in input_list:
        print(i)

#내가 만든것.. 
def MyOwn(input_list: list):
    # print(input_list)
    cnt=0
    for x in range(len(input_list)):
        for y in range(x+1,len(input_list)):
            # print(f'input_list[{x}]={input_list[x]} : input_list[{y}]={input_list[y]}')
            if input_list[x] > input_list[y]:
                cnt+=1
                print(f"비교! {cnt}")
                input_list[x], input_list[y] = input_list[y], input_list[x]
                # print(f'교환! {input_list}')            
        
    for i in input_list:
        print(i)
        
n = int(input())

input_list = []
for i in range(n):
    input_list.append(int(input()))

bubble_1(input_list)
bubble_2(input_list)
#MyOwn(input_list)