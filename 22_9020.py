# 22	9020	중	수학   골드바흐의 추측
'''
소수 찾기
cnt_primes=0
for i in numbers:
    prime = 0
    if i > 2 :
        for divisor in range(2,i):
            #소수 아님
            if i%divisor == 0:
                prime = 0
                break
            #소수
            else:
                prime = 1
        if prime == 1:
            cnt_primes+=1
    elif i == 2:
        cnt_primes+=1
print(cnt_primes)
'''
# N = primeNumber + primeNumber
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

# if __name__ == "__main__":
    #입력
n = int(input())
GBN = []
GBP = []
for i in range(n):
    GBN.append(int(input()))
# 계산
# print(f'GBN = {GBN}')
for N in GBN:
    # print(f'N = {N}')
    prime_num = []
    for i in range(N):
        #자기보다 작은 소수 찾기
        if search_prime(i) == True:
            prime_num.append(i)
    # print(f'primenum = {prime_num}')
    for i in range(len(prime_num)-1):
        # print(f"i={i}")
        for x in range(i,len(prime_num)):
            # print(f"x={x}")
            # print(f"primenum[i]+primenum[x]={prime_num[i]}+{prime_num[x]}")
            if prime_num[i]+prime_num[x] == N:
                GBP.append([prime_num[i],prime_num[x]])
                if prime_num[i] == prime_num[x]:
                    break
    #GBP 추출 성공
    #GBP 차이 적은거 찾기 두개 이상일때만
    if len(GBP) > 1:
        tmp = []
        for gbp in GBP:
            tmp.append([gbp[0]-gbp[1]])
        # 출력
        # print(f'GBP = {GBP}')
        # print(f'tmp = {tmp}')
        for i in range(len(tmp)):
            if tmp[i] == max(tmp):
                print(GBP[i][0],GBP[i][1])
    else:
        print(GBP[0][0],GBP[0][1])
    GBP = []
