# 29	2750	하	정렬	수 정렬하기	6-1 ~ 6-4
n = int(input())

input_list = []
for i in range(n):
    input_list.append(int(input()))
print(input_list)

for i in input_list:
    temp_min = i
    if i < temp_min:
        temp_min = i
    else: