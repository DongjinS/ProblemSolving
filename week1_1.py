###정글 1주차 문제 풀이
### 정글#  백준#  난이도      주제              제목
### 1	  2557	 하	    기초 (입출력)     	Hello World  

from functools import lru_cache


print("Hello World!")

### 2	  10869  하 	기초 (입출력)	      사칙연산
# A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력
# test_list = [int(x) for x in input().split()]  

# print(test_list[0]+test_list[1])
# print(test_list[0]-test_list[1])
# print(test_list[0]*test_list[1])
# print(int(test_list[0]/test_list[1]))
# print(test_list[0]%test_list[1])

### 3	  2588	하	    기초 (입출력)	    곱셈
# 굳이 반복문 안돌리고 한자리 씩 나눠서 곱셈답으로 출력해도됨!!! 왜이렇게 했지,..? 나는 인간의 곱셈방식을 구현 ..?
# x = list(input())
# y = list(input())

# x.reverse()
# y.reverse()
# # print(x, y)

# ans_list = []
# n=0
# for y_ in y:
#     for x_ in x:
#         ans_list.append(int(x_) * int(y_) * (10 ** n))
#         n+=1
#         # print(n)
#     n -= len(y) - 1
# # print(ans_list)

# ans= 0
# temp_ans = 0
# n = 0
# for i in range(len(ans_list)):
#     ans += ans_list[i]
#     temp_ans += ans_list[i]
#     # print("i :", i)
#     if (i+1)%3==0:
#         print(int(temp_ans/(10**(n))))
#         temp_ans = 0
#         n += 1
# print(ans)

### 4	9498	하	기초 (조건문)	시험 성적	1-1
# 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
# 
# score = int(input())
# if 90<=score<=100:
#     print("A")
# elif 80<=score<=89:
#     print("B")
# elif 70<=score<=79:
#     print("C")
# elif 60<=score<=69:
#     print("D")
# else:
#     print("F")

# 5	2753	하	기초 (조건문)	윤년	1-1
# 연도가 주어졌을 때, 윤년이면 1, 아니면 0을 출력하는 프로그램을 작성하시오.
# 윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때이다.
# 예를 들어, 2012년은 4의 배수이면서 100의 배수가 아니라서 윤년이다. 1900년은 100의 배수이고 400의 배수는 아니기 때문에 윤년이 아니다. 하지만, 2000년은 400의 배수이기 때문에 윤년이다.

# year = int(input())
# if year%4 == 0:
#     if year%100!= 0 or year%400==0:
#         # 윤년  
#         print(1)
#     else:
#         print(0)
# else:
#     print(0)

# 6	1085	하	기초 (조건문)	직사각형에서 탈출	1-1
# 한수는 지금 (x, y)에 있다. 직사각형은 각 변이 좌표축에 평행하고, 왼쪽 아래 꼭짓점은 (0, 0), 오른쪽 위 꼭짓점은 (w, h)에 있다. 직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.
# input_list = [int(x) for x in input().split()]  
# # map 방식도 있음 map(int, input().spit())
# #input_list = map(int, input().split())
# x = input_list[0]
# y = input_list[1]
# w = input_list[2]
# h = input_list[3]
# ans=[w-x,h-y, x, y]
# print(min(ans))
# if w-x <  h-y:
#     ans.append(w-x)
# else:
#     ans.append(h-y)

# 7	2739	하	기초 (반복문)	구구단	1-2
# N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다.

# n = int(input())

# for i in range(1,10):
#     print(n,"*",i,"=",n*i)

# 8	10950	하	기초 (반복문)	A+B - 3	1-2
# 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
# n = int(input())
# for _ in range(n):
#     numbers_list = input()
#     numbers = (numbers_list.split())
#     print(int(numbers[0]) + int(numbers[1]))

# 9	2438	하	기초 (반복문)	별 찍기 - 1	1-2
# 첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
# n = int(input())
# for i in range(1,n+1):
#     print("*" * i)

# 10	10871	하	기초 (반복문)	X보다 작은 수	1-2
# 정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 r 출력하는 프로그램을 작성하시오.
# n, x = [int(x) for x in input().split()]
# n_list = [int(x) for x in input().split()]

# # print(n,x,n_list)
# ans = ""
# for i in n_list:
#     if i < x:
#         ans+= str(i) + " "
# print((ans))

# 11	2562	하	기초 (배열)	최댓값	2-2
# 9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.
# 예를 들어, 서로 다른 9개의 자연수
# 3, 29, 38, 12, 57, 74, 40, 85, 61
# 이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.
# list_input = []
# for _ in range(9):
#     list_input.append(int(input()))

# for i in range(len(list_input)):
#     if list_input[i] == max(list_input):
#         print(list_input[i])
#         print(i+1)

