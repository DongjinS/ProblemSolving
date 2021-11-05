#24	2628	하	수학	종이자르기	
###메모리 초과..####

'''
#가로 세로
width, height = map(int, input().split())
#자르는 횟수
n = int(input())
#자르는 위치
cut_garo = []
cut_sero = []
boxes = []
for i in range(n):
    temp = [int(x) for x in input().split()]  
    # print(temp)
    if temp[0] == 0:
       cut_garo.append(temp[1])
    else:
        cut_sero.append(temp[1])
#위에서 부터+뒤에서부터 자르는 걸로 정렬 후
cut_garo.sort(reverse=True)
cut_sero.sort(reverse=True)
#가로로만 잘랐을 때 박스
for i in range(len(cut_garo)):
    temp_box1 = [width, height - cut_garo[i]]
    height = cut_garo[i]
    boxes.append(temp_box1)
    # boxes.append(temp_box2)
boxes.append([width,height])
# print(cut_sero)
#세로로 자르면
for i in range(len(cut_sero)):
    for n in range(len(boxes)):
        temp_box1 = [(boxes[n][0]-cut_sero[i]) ,boxes[n][1]]
        temp_box2 = [cut_sero[i],boxes[n][1]]
        # boxes.remove(box)
        boxes.append(temp_box1)
        boxes.append(temp_box2)
del boxes[:len(cut_garo)+1]
# print(boxes)
# print(max(boxes))
ans_box = max(boxes)
print(ans_box[0]*ans_box[1])
'''
#가로 세로
width, height = map(int, input().split())
#자르는 횟수
n = int(input())
garo_pt = [0,width]
sero_pt = [0,height]  
for i in range(n):
    temp_input = [int(x) for x in input().split()]
    if temp_input[0] == 0:
        sero_pt.append(temp_input[1])
    else:
        garo_pt.append(temp_input[1])

sero_pt.sort()
garo_pt.sort()

boxes = []
for w in range(len(garo_pt)-1):
  
    width = garo_pt[w+1] - garo_pt[w]
    for h in range(len(sero_pt)-1):
        height = sero_pt[h+1]-sero_pt[h]
        boxes.append([width,height])
        
print(max(boxes)[0]*max(boxes)[1])