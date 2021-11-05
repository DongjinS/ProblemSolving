# 13	4344	하	기초 (배열)	평균은 넘겠지	2
ans = []
for _ in range(int(input())):
    temp_list = [int(x) for x in input().split()]
    avg = (sum(temp_list)-temp_list[0])/temp_list[0]
    
    n = 0
    for i in range(1,len(temp_list)):
        if temp_list[i] > avg:
            n += 1
    ans.append((n/(len(temp_list)-1))*100)
for i in ans:
    # print("{:.3f}".format(i)+"%")
    print(f'{i:.3f}'+"%")
    
"""
5
5 50 50 70 80 100
7 100 95 90 80 70 60 50
3 70 90 80
3 70 90 81
9 100 99 98 97 96 95 94 93 91
예제 출력 1 
40.000%
57.143%
33.333%
66.667%
55.556%
출처
"""