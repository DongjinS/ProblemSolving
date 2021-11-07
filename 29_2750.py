# 29	2750	하	정렬	수 정렬하기	6-1 ~ 6-4
n = int(input())

input_list = []
for i in range(n):
    input_list.append(int(input()))
# print(input_list)

for x in range(len(input_list)):
     for y in range(x+1,len(input_list)):
        # print(f'input_list[{x}]={input_list[x]} : input_list[{y}]={input_list[y]}')
        if input_list[x] > input_list[y]:
            input_list[x], input_list[y] = input_list[y], input_list[x]
            # print(f'교환! {input_list}')            
    
for i in input_list:
    print(i)
   