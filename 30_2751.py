# 30	2751	중	정렬	수 정렬하기 2	6-5 ~ 6-8
# -- 셸, 퀵, 병합, 힙
import sys
n = int(input())
tmp_list = []
for i in range(n):
    tmp_list.append(int(sys.stdin.readline()))

tmp_list.sort()
for i in tmp_list:
    print(i)