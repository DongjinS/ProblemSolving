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
''' 
짝수의 특성을 이용 - 짝수 N을 2로 나눠서 합해서 N이되는 두개의 값(서로 같은 값,lt,rt)을 소수 판별 을 통해 소수면 break
                아니면 lt = lt - 1, rt = rt + 1 을 통해서 (더해서 N이 되는 특성을 활용) 
                lt,rt 모두 소수가 될때 까지 -1,+1 해준다.
    -- 지금 내 방식은 N 이하의 소수를 먼저 다 찾고 비교를 하니까 너무 오래걸림
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