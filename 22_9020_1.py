# 22	9020	중	수학   골드바흐의 추측
## 혁주 방식 - 짝수 특성 이용, 나누면 같은 값 
def search_prime(i: int) -> int: 
    if i > 2 :
        for divisor in range(2,i):
            #소수 아님
            if i%divisor == 0:
                return False
            #소수
            else:
                prime = 1
        if prime == 1:
            return True
    elif i == 2:
        return True


n = int(input())
GBN = []
GBP = []
for i in range(n):
    GBN.append(int(input()))
for N in GBN:
    lt, rt = int(N/2), int(N/2)
    while search_prime(lt) != True or search_prime(rt) != True:
        lt-=1
        rt+=1
    GBP.append([lt,rt])
# print(GBP)
for gbp in GBP:
    print(gbp[0],gbp[1])