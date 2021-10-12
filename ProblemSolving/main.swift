//
//  main.swift
//  ProblemSolving
//
//  Created by DJ on 2021/10/12.
//

import Foundation

// MARK: - 동진

// MARK: ??
//var a:Int
//var N = 0
//var First:Int
//var Second:Int
//var Third:Int
//var fourth:Int
//var arr1:Set<Int> = []
//var arr2:Set<Int> = []
//
//for e in 0...10000{
//    arr2.insert(e)
//}
//
//    for i in 0...10000{
//        if i < 10{
//         N = i + i
//        }else if i / 10 < 10{   // 10 의 자릿수 10<N < 99
//            First = Int(i/10)
//            Second = i - First*10
//            N = i + First + Second
//            arr1.insert(N)
//        }else if i / 10 < 100{       // 100의 자릿수 100< N < 999
//            First = Int(i/100)
//            Second = Int((i - First*100)/10)
//            Third = i - First*100 - Second*10
//            N = i + First + Second + Third
//            arr1.insert(N)
//        }else if i / 10 < 1000{    // 1000 의 자릿수 1000< N < 9999
//            First = Int(i/1000)
//            Second = Int((i - First*1000)/100)
//            Third = Int((i - First*1000 - Second*100)/10)
//            fourth = i - First*1000 - Second*100 - Third*10
//            N = i + First + Second + Third + fourth
//            arr1.insert(N)
//        }else if N >= 10000{
//               break
//    }
//        }
//var arr3 = arr2.subtracting(arr1).sorted()
//
//print(arr3)

//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//    var tot = 0
//    for bol in 0...signs.count{
//        if signs[bol] == true{
//            tot += absolutes[bol]
//        }else{
//            tot -= absolutes[bol]
//        }
//    }
//
//
//    return tot
//}
//print(solution([4,7,12], [true, false, true]))



//MARK: 프로그래머스 코딩테스트 연습 lv1 - 신규아이디 추천
//func solution(_ new_id:String) -> String {
//    var nid = Array(new_id)
//    var answer = ""
//    //1단계 new_id의 모든 대문자를 대응되는 소문자로 치환합니다.
//    for i in 0..<nid.count{
//        nid[i] = Character(nid[i].lowercased())
//    }
//    print("step 1 end, \(nid)")
//    //2단계 new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거합니다.
//    let eng = "qwertyuiopasdfghjklzxcvbnm"
//    let integer = "1234567890"
//    for i in nid{
//        if i == "_" || i == "-" || i == "." || eng.contains(i) || integer.contains(i){
//
//        }else{
//            print("2-1",i)
//            nid.remove(at: nid.firstIndex(of: i)!)
//        }
//    }
//    print("step 2 ends, \(nid)")
//    //3단계 new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환합니다.
//    var chk:[Int] = []
//    for i in 0..<nid.count{
//        if nid[i] == "."{
//            chk.append(i)
//        }
//    }
//    print(chk)
//    var before = nid.count+1
//    var n = 0
//    for now in chk{
//        if (now-before).magnitude == 1{
//            nid.remove(at: now-n)
//            n += 1
//        }
//        before = now
//    }
//
//
//    print("step 3 ends, \(nid)")
//    //4단계 new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
//    while nid.first == "."{
//            nid.removeFirst()
//    }
//    print("step 4-1 ends, \(nid)")
//    while nid.last == "."{
//            nid.removeLast()
//    }
//    print("step 4-2 ends, \(nid)")
//    //step 4 ends
//    //5단계 new_id가 빈 문자열이라면, new_id에 "a"를 대입합니다.
//    if nid.count == 0{
//        nid.append("a")
//    }
//    //6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다.
//    if nid.count>=16{
//        while nid.count != 15{
//            nid.popLast()
//        }
//        if nid.last == "."{
//            nid.popLast()
//        }
//    }
//    //만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
//    //7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
//    if nid.count<=2{
//        let q = nid.last
//        while nid.count != 3{
//            nid.append(q!)
//        }
//    }
//    //스트링으로 바꿔서 리턴하기
//    for i in nid {
//        answer += String(i)
//    }
//    return answer
//}
//
//print(solution("....asdasdasd..asdasd..."))

//MARK: 프로그래머스 코딩테스트 연습 lv1- 모의고사
//func solution(_ answers:[Int]) -> [Int] {
//    //10000문제
//    //1번 - 12345*n=10000
//    let supo1 = [1,2,3,4,5]
//    // 2 - 21232425*n
//    let supo2 = [2,1,2,3,2,4,2,5]
//    // 3 - 3311224455 * n
//    let supo3 = [3,3,1,1,2,2,4,4,5,5]
//    var jum:[Int] = []
//    jum.append(calc_tot(supo1, answers))
//    jum.append(calc_tot(supo2, answers))
//    jum.append(calc_tot(supo3, answers))
//
//    var bestScore = jum.max()
//    var bestScorer:[Int] = []
//    for i in 0..<jum.count{
//        if bestScore == jum[i]{
//            bestScorer.append(i+1)
//        }
//    }
//
//    return bestScorer
//}
//func calc_tot(_ supo:[Int], _ answers:[Int]) -> Int{
//    var tot = 0
//    for i in 0..<answers.count{
//        if answers[i] == supo[i%supo.count]{
//            tot+=1
//        }
//    }
//    return tot
//}
//
//print(solution([1,1,1,1]))

//MARK: 프로그래머스 코.테 lv1 - K번쨰 수
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var ans:[Int] = []
//
//    for i in 0..<commands.count{
//        var temp_arr:[Int] = []
//        for r in 0..<array.count{
//            if r >= commands[i][0]-1 && r <=  commands[i][1]-1{
//                temp_arr.append(array[r])
//            }else if r >  commands[i][1]-1{
//                break
//            }
//        }
//        print("\(i) not sorted - \(temp_arr)")
//        temp_arr.sort()
//        print("\(i) sort - \(temp_arr)")
//        ans.append(temp_arr[commands[i][2]-1])
//    }
//
//    return ans
//}
//
//print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
//

//MARK: 프로그래머스 코테 lv1 - 숫자 문자열과 영단어
//func solution(_ s:String) -> Int {
//    var answer = ""
//    var n = 0
//    let arr_c = Array(s)
//    var arr_s:[String] = []
//    for i in 0..<arr_c.count{
//        arr_s.append(String(arr_c[i]))
//    }
//    print(arr_s)
//    while n < arr_s.count{
//        if arr_s[n] == "o"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] == "one"{
//                answer += "1"
//                n+=3
//            }
//        }else if arr_s[n] == "t"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] == "two"{
//                answer += "2"
//                n+=3
//            }else if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] + arr_s[n+4] == "three"{
//                answer += "3"
//                n+=5
//            }
//        }else if arr_s[n] == "f"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] == "four"{
//                answer += "4"
//                n+=4
//            }else if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] == "five"{
//                answer += "5"
//                n+=4
//            }
//        }else if arr_s[n] == "s"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] == "six"{
//                answer += "6"
//                n+=3
//            }else if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] + arr_s[n+4] == "seven"{
//                answer += "7"
//                n+=5
//            }
//        }else if arr_s[n] == "e"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] + arr_s[n+4] == "eight"{
//                answer += "8"
//                n+=5
//            }
//        }else if arr_s[n] == "n"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] == "nine"{
//                answer += "9"
//                n+=4
//            }
//        }else if arr_s[n] == "z"{
//            if arr_s[n] + arr_s[n+1] + arr_s[n+2] + arr_s[n+3] == "zero"{
//                answer += "0"
//                n+=4
//            }
//        }else{
//            answer += arr_s[n]
//            n+=1
//        }
//
//    }
//
//    return Int(answer)!
//}
//
//print(solution("one4seveneight"))

//MARK: 프로그래머스 코테 lv1 - 소수 만들기
//func solution(_ nums:[Int]) -> Int {
//    var answer = -1
//    var s_nums = Set(nums)
//    var a_nums = Array(s_nums)
//    //가능한 소수 먼저 구하기
//    if a_nums.count>2{
//        var possiblePrimeNums:[Int] = []
//        var maxNum = 0
//        for i in a_nums{
//            maxNum += i
//        }
//        for i in 1...maxNum{
//            var n = 0
//            for r in 1...i{
//                if i%r == 0{
//                    n += 1
//                }
//            }
//            if n==2{
//                possiblePrimeNums.append(i)
//            }
//        }
//        //입력받은 숫자 중 세개를 더해 만들수 있는 소수 개수 카운트 하기
//        var possibleThreeNums:[Int] = []
//        for i in 0..<a_nums.count-2{
//            for r in i+1..<a_nums.count-1{
//                for q in r+1..<a_nums.count{
//                    possibleThreeNums.append(a_nums[i]+a_nums[r]+a_nums[q])
//                }
//            }
//        }
//        answer = 0
//        for i in possiblePrimeNums{
//            for r in possibleThreeNums{
//                if i == r{
//                    answer+=1
//                }
//            }
//        }
//    }
//    return answer
//}

//MARK: 프로그래머스 스킬체크 1단계
//func solution(_ s:String) -> Int {
//    var arr_s = Array(s)
//    var x:String = ""
//    var num:String = ""
//    if arr_s[0] == "+" || arr_s[0] == "-"{
//        x = String(arr_s[0])
//        for i in 1..<arr_s.count{
//            num+=String(arr_s[i])
//        }
//    }else{
//        for i in 0..<arr_s.count{
//            num+=String(arr_s[i])
//        }
//    }
//    print(x, num)
//    if x == "-"{
//        var n = Int("-"+num)!
//        return n
//    }else{
//        var n = Int(num)!
//        return n
//    }
//    return 0
//}
//print(solution("-1234"))
//
//func solution(_ dartResult: String) -> Int{
//    var answer = 0
//    var arr_dR = Array(dartResult)
//    var operation:[Int] = []
//    var n = -1
//    var i = 0
//    while i<arr_dR.count{
//        switch arr_dR[i] {
//
//        case "S":
//            operation[n] = operation[n]
//            i+=1
//        case "D":
//            operation[n] = operation[n] * operation[n]
//            i+=1
//        case "T":
//            operation[n] = operation[n] * operation[n] * operation[n]
//            i+=1
//        case "*":
//            operation[n] = operation[n] * 2
//            if n>0{
//                operation[n-1] =  operation[n-1] * 2
//            }
//            i+=1
//        case "#":
//            operation[n] = -(operation[n])
//            i+=1
//        default:
//            if arr_dR[i] == "1" && arr_dR[i+1] == "0" {
//                operation.append(10)
//                n+=1
//                i+=2
//            }else{
//                operation.append(Int(String(arr_dR[i]))!)
//                n+=1
//                i+=1
//            }
//        }
//    }
//    print(operation)
//    for i in operation{
//        answer+=i
//    }
//
//    return answer
//}
//print(solution("1D2S3T*"))

//MARK: 프로그래머스 코테 lv1 - 실패율

//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    //N - 스테이지 개수, stage[] - 유저별 스테이지 상황, failureRate[] - 스테이지 별 실패율
//    var failureRate:[Double] = []
//    var answer:[Int] = []
//    for i in 1...N{
//        var fR = 0.0
//        var player_stage = 0.0
//        var player_stageNotClear = 0.0
//        for r in stages{
//            if i < r{
//                player_stage+=1
//            }else if i == r{
//                player_stage+=1
//                player_stageNotClear+=1
//            }else{
//
//            }
//        }
//        if player_stageNotClear == 0 && player_stage == 0{
//            fR = 0.0
//        }else{
//            fR = player_stageNotClear/player_stage
//        }
//        print(i,fR)
//        failureRate.append(fR)
//    }
//    let sortedFR = failureRate.sorted(by: >)
//    for i in 0..<N{
//        for r in 0..<N{
//            if failureRate[r] == sortedFR[i]{
//                if !answer.contains(r+1){
//                    answer.append(r+1)
//                }
//            }
//        }
//    }
//    return answer
//}
//
//print(solution(5, [2,1,2,4,2,4,3,3]))

//MARK: 프로그래머스 코테 - 위클리 챌린지 week4
//func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
//    var answer = ""
//    var lanPref_dic: [String:Int] = [:]
//    var developer_jobTypeScore:[Int] = []
//    for i in 0..<languages.count{
//        lanPref_dic[languages[i]] = preference[i]
//    }
//    //print("lanPref_dic: \(lanPref_dic)")
//    for i in table{
//        let arr = i.components(separatedBy: " ")
//        var jum = 0
//        //print("arr: \(arr)")
//        var n = arr.count
//        //print("n: \(n)")
//        for r in arr{
//            if lanPref_dic.keys.contains(r)  {
//                jum += lanPref_dic[r]! * n
//                //print("jum += \(r):\(lanPref_dic[r]!) * \(n)")
//            }
//            n-=1
//        }
//        developer_jobTypeScore.append(jum)
//    }
//    //print("developer_jobTypeScore: \(developer_jobTypeScore)")
//    let max = developer_jobTypeScore.max()
//    var maxIndex_arr:[Int] = []
//    for i in 0..<developer_jobTypeScore.count{
//        if max == developer_jobTypeScore[i]{
//            maxIndex_arr.append(i)
//        }
//    }
//    //print(maxIndex_arr)
//    if maxIndex_arr.count>1{
//        var answer_arr:[String] = []
//        for i in maxIndex_arr{
//            let x = table[i].components(separatedBy: " ")
//            answer_arr.append(x[0])
//        }
//        answer_arr.sort()
//        //print("answer_arr.sort(): \(answer_arr)")
//        answer = answer_arr[0]
//    }else{
//        let answer_arr = table[maxIndex_arr[0]].components(separatedBy: " ")
//        answer = answer_arr[0]
//    }
//
//    return answer
//}
//print(solution(["SI JAVA JAVASCRIPT SQL PYTHON C#", "CONTENTS JAVASCRIPT JAVA PYTHON SQL C++", "HARDWARE C C++ PYTHON JAVA JAVASCRIPT", "PORTAL JAVA JAVASCRIPT PYTHON KOTLIN PHP", "GAME C++ C# JAVASCRIPT C JAVA"],
//               ["JAVA", "JAVASCRIPT"],
//               [7, 5]))

//MARK: 프로그래머스 코테 lv1 - 약수의 개수와 덧셈
//func solution(_ left:Int, _ right:Int) -> Int {
//    var sum = 0
//    for i in left...right{
//        var n = 0
//        for r in 1...i{
//            if i%r == 0{
//                n+=1
//            }
//        }
//        if n%2 == 0{
//            sum+=i
//        }else{
//            sum-=i
//        }
//    }
//
//    return sum
//}
//print(solution(13, 17))

//MARK: 프로그래머스 코테 lv1 - 3진법 뒤집기
//// - radix 사용하면 훨씬 편함
/*
 10진법 -> 2진법
 let decimal: Int = 30
 let binary: String = String(decimal, radix: 2)
 print(binary)
 /* 11110 */
 2진법 -> 10진번
 let binary: String = "11011"
 let decimal: Int = Int(binary, radix: 2)!
 print(decimal)
 /* 27 */
 */
//func solution(_ n:Int) -> Int {
//    var answer = 0
//    var ternary:[Int] = []
//    var num = n
//    var power = 0
//    while num/3 != 0 {
//        num /= 3
//        power += 1
//    }
//    //print("power: \(power)")
//    num = n
//    for i in 0...power{
//        //print("pow(3, Double(ternary.count+1-i)): \(pow(3, Double(power-i)))")
//        if num/Int(pow(3, Double(power-i)))<3{
//            print("\(num)/\(Int(pow(3, Double(power-i))))= \(num/Int(pow(3, Double(power-i))))")
//            ternary.append(num/Int(pow(3, Double(power-i))))// 이게 안들어가네
//            num -= Int(pow(3, Double(power-i))) * (num/Int(pow(3, Double(power-i))))
//        }else{
//            ternary.append(0)
//        }
//    }
//    print(ternary)
//    ternary.reverse()
//    print("ternary_r: \(ternary)")
//    for i in 0...power{
//        print("\(ternary[i]) * \(Int(pow(3, Double(i)))) = \(ternary[i] * Int(pow(3, Double(power-i))))")
//        answer += ternary[i] * Int(pow(3, Double(power-i)))
//    }
//
//    return answer
//}
//
//print(solution(125))

//MARK: 프로그래머스 코테 lv1 - 예산

//func solution(_ d:[Int], _ budget:Int) -> Int {
//    var answer = 0
//    var sum = 0
//    for i in 0..<d.count{
//        sum += d[i]
//    }
//    if sum <= budget{//신청 금액 다 더해도 예산 이하면 모든 부서 지원 가능
//        answer = d.count
//    }else{
//        var arr_d = d
//        //print("arr_d: \(arr_d)")
//        for i in (0..<d.count){
//            arr_d.remove(at: arr_d.lastIndex(of: arr_d.max()!)!)
//            //print("arr_d(removed): \(arr_d)")
//            answer = d.count-i-1
//            sum = 0
//            for r in 0..<arr_d.count{
//                sum += arr_d[r]
//            }
//            if sum <= budget{
//              break
//            }
//        }
//    }
//    return answer
//}
//
//print(solution([1,3,2,5,4], 9))

// MARK: 프로그래머스 코테 lv1 - 비밀지도
//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    var answer: [String] = []
//    var map1:[[String]] = []
//    var map2:[[String]] = []
//
//    //지도 구현
//    for i in 0..<n{
//        let binary_1 =  Array(String(arr1[i], radix: 2))
//        var temp_arr_1:[String] = []
//        let binary_2 =  Array(String(arr2[i], radix: 2))
//        var temp_arr_2:[String] = []
//        for i in 0..<binary_1.count{
//            temp_arr_1.append(String(binary_1[i]))
//        }
//        while temp_arr_1.count<n{
//            temp_arr_1.insert("0", at: 0)
//        }
//        map1.append(temp_arr_1)
//        for i in 0..<binary_2.count{
//            temp_arr_2.append(String(binary_2[i]))
//        }
//        while temp_arr_2.count<n{
//            temp_arr_2.insert("0", at: 0)
//        }
//        map2.append(temp_arr_2)
//    }
//    print(map1)
//    print(map2)
//
//    //답 구하기
//
//    for i in 0..<n{
//        var temp_s = ""
//        for r in 0..<n{
//            if map1[i][r] == "0" && map2[i][r] == "0"{
//                temp_s += " "
//            }else{
//                temp_s += "#"
//            }
//        }
//        answer.append(temp_s)
//    }
//
//
//    return answer
//}
//print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))

//MARK: 프로그래머스 코테 lv2 - 문자열 압축
//func solution(_ s:String) -> Int {
//    var answer = 0
//    var answer_arr:[Int] = []
//    let arr = Array(s)
//
//    var n = 1
//
//    while n <= arr.count/2{
//        var arr_2:[[String]] = []
//        var temp:[String] = []
//        // 배열 자르기
//
//        print("\n\nn=\(n)")
//
//        for i in 0..<arr.count{
//            if (i+1)%n==0{
//                temp.append(String(arr[i]))
//                arr_2.append(temp)
//                temp = []
//            }else if (i+1)%n != 0 && (arr_2.count+1)*n>arr.count{
//                print("arr[i]:\(arr[i])\n")
//                temp.append(String(arr[i]))
//                print("temp:\(temp)\n")
//                if i == arr.count-1{
//                    arr_2.append(temp)
//                    temp = []
//                }
//            }else{
//                temp.append(String(arr[i]))
//            }
//        }
//        n+=1
//        print("arr_2: \(arr_2)")
//        // 잘린 배열 연속으로 중복되면 앞에거 날리고 숫자 붙이기 붙여서 줄이기
//        var arr_3:[[String]] = []
//        var t = 2
//        for i in 0..<arr_2.count{
//            var temp_wrd = arr_2[i]
//            if i > 0 && arr_3.last == temp_wrd{
//                if t == 2{
//                    arr_3[arr_3.count-1] = ["\(t)"]
//                    arr_3.append(temp_wrd)
//                    t += 1
//                }else if t/10>0{
//                    arr_3[arr_3.count-2] = ["\(t/10)","\(t%10)"]
//                    t += 1
//                }else{
//                    arr_3[arr_3.count-2] = ["\(t)"]
//                    t += 1
//                }
//            }else{
//                arr_3.append(temp_wrd)
//                t = 2
//            }
//        }
//        print("arr_3: \(arr_3)")
//        var sum = 0
//        for i in arr_3{
//            for r in i{
//                sum+=1
//            }
//        }
//        answer_arr.append(sum)
//    }
//    print(answer_arr)
//    answer = answer_arr.min() ?? 1
//    return answer
//}
//
//print(solution("aa"))

// MARK: 프로그래머스 코테 lv2 - 위클리챌린지 wk5 모음 사전
// 'A', 'E', 'I', 'O', 'U' 로 이루어진 사전 - 1st A, 2nd AA .... last - UUUUU
//func solution(_ word:String) -> Int {
//    //사전 구현
//    let inPut = word.map{String($0)}
//    let order_dic:[String] = ["A", "E", "I", "O", "U"]
//
//    /*
//     A
//     AA
//     AAA
//     AAAA
//     AAAAA
//     AAAAE
//     AAAAI
//     AAAAO
//     AAAAU
//     AAAE
//     AAAEA
//     AAAEE
//     AAAEI
//     AAAEO
//     AAAEU
//     AAAI
//     AAAIA
//     AAAIE
//     AAAII
//     AAAIO
//     AAAIU
//     AAAO
//     AAAOA
//     AAAOE
//     AAAOI
//     AAAOO
//     AAAOU
//     AAAU
//     AAAUA
//     AAAUE
//     ...
//     */
//    var temp:[String] = []
//    var n = 1
//    var a = 0 // 단어 5번째 자리
//    var b = 1 // 4번째 자리
//    var c = 1 // 3번째 자리
//    var d = 1 // 2번째 자리
//    var e = 1 // 1번째 자리
//
//    while temp != inPut{
//        //빈칸 있으면 A를 넣는다
//        if temp.count < 5{
//            temp.append(order_dic[a])
//        }else if temp.count == 5{//다차면 알파벳을 바꾼다
//            a+=1
//            if a != 5 {
//                temp[4] = order_dic[a]
//            }else{
//                a = 0
//                temp.popLast()
//                if b != 5{
//                    temp[temp.count-1]=order_dic[b]
//                    b+=1
//                }else{
//                    b = 1
//                    temp.popLast()
//                    if c != 5{
//                        temp[temp.count-1]=order_dic[c]
//                        c+=1
//                    }else{
//                        c = 1
//                        temp.popLast()
//                        if d != 5{
//                            temp[temp.count-1]=order_dic[d]
//                            d+=1
//                        }else{
//                            d = 1
//                            temp.popLast()
//                            if e != 5{
//                                temp[temp.count-1]=order_dic[e]
//                                e+=1
//                            }else{
//                                print("break!")
//                                break
//                            }
//                        }
//                    }
//                }
//            }
//        }
//
//        print("\(n): \(temp)")
//        n+=1
//    }
//
//    return n-1
//}
//print(solution("AAAE"))

//MARK: 프로그래머스 코테 lv2 - 오픈채팅방
//func solution(_ record:[String]) -> [String] {
//    var answer:[String] = []
//    var UID_nickname:[String:String] = [:]
//    var enter_UID:[String:String] = [:]
//    var leave_UID:[String:String] = [:]
//
//    var temp:[String] = []
//    for i in record{
//        temp = i.components(separatedBy: " ")
//        if temp.count>=3{
//            UID_nickname[temp[1]] = temp[2]
//        }
//    }
//    print(UID_nickname)
//    for i in record{
//        temp = i.components(separatedBy: " ")
//        if temp[0] == "Enter"{
//            answer.append("\(UID_nickname[temp[1]]!)님이 들어왔습니다.")
//        }else if temp[0] == "Leave"{
//            answer.append("\(UID_nickname[temp[1]]!)님이 나갔습니다.")
//        }
//    }
//    return answer
//}
//
//print(solution(
//        ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]
//))

//MARK: 프로그래머스 코테 lv2 - 멀쩡한 사각형
//func solution(_ w:Int, _ h:Int) -> Int{
//    //브레젠험 알고리즘 - ㅠㅠ못하겠디
//    //빗선이 지나가는 사각형의 개수 : 가로 + 세로 - (가로 세로의 최대 공약수)
//    let answer = w * h - (w + h - gcd(w, h))
//
//    print(answer)
//    return answer
//}
//func gcd(_ w:Int, _ h:Int)->Int{//greatest common factor
//    if h == 0 {
//        //print(w)
//        return w
//    } else {
//        return gcd(h, w%h)
//    }
//}
//_ = solution(2, 5)


//MARK: 프로그래머스 위클리 챌린지 6th week
/*
 weights            head2head                       result
 [50,82,75,120]     ["NLWL","WNLL","LWNW","WWLN"]    [3,4,1,2]
 [145,92,86]        ["NLW","WNL","LWN"]                 [2,3,1]
 [60,70,60]         ["NNN","NNN","NNN"]                  [2,1,3]
 */

//func solution(_ weights:[Int], _ head2head:[String]) -> [Int] {
//
//    let recordsTable1 = Boxer_records()
//
//    for i in 0..<weights.count{
//        let tempBoxer = Boxer()
//        recordsTable1.totalRecords.append(tempBoxer)
//        recordsTable1.totalRecords[i].number = i+1
//        recordsTable1.totalRecords[i].weight = weights[i]
//        recordsTable1.totalRecords[i].records = head2head[i]
//        recordsTable1.totalRecords[i].winningRate = recordsTable1.calcWinningRate(head2head[i])
//        recordsTable1.totalRecords[i].numOfwinOver = recordsTable1.calcWinOverWight(head2head[i], i, weights)
//    }
//    print("정렬 전")
//    recordsTable1.totalRecords.map{print($0.number, $0.weight, $0.records, $0.winningRate, $0.numOfwinOver)}
//    //승률순으로 정렬
//    print("승률 순으로 정렬 후")
//    recordsTable1.totalRecords.sort(by: {$0.winningRate>$1.winningRate})
//    recordsTable1.totalRecords.map{print($0.number, $0.weight, $0.records, $0.winningRate, $0.numOfwinOver)}
//    for i in 0..<recordsTable1.totalRecords.count-1{
//        for i in 0..<recordsTable1.totalRecords.count-1{
//            var temp = Boxer()
//            if recordsTable1.totalRecords[i].winningRate == recordsTable1.totalRecords[i+1].winningRate{//승률이 같을때
//                if recordsTable1.totalRecords[i].numOfwinOver < recordsTable1.totalRecords[i+1].numOfwinOver{//자기보다 무거운 사람 이긴 횟수로 정렬하기
//                    temp = recordsTable1.totalRecords[i]
//                    recordsTable1.totalRecords.remove(at: i)
//                    recordsTable1.totalRecords.insert(temp, at: i+1)
//                }else if recordsTable1.totalRecords[i].numOfwinOver == recordsTable1.totalRecords[i+1].numOfwinOver{//무거운사람 이긴 횟수도 같을때
//                    if recordsTable1.totalRecords[i].weight < recordsTable1.totalRecords[i+1].weight{//자기 무게가 무거운 순으로 정렬하기
//                        temp = recordsTable1.totalRecords[i]
//                        recordsTable1.totalRecords.remove(at: i)
//                        recordsTable1.totalRecords.insert(temp, at: i+1)
//                    }else if recordsTable1.totalRecords[i].weight == recordsTable1.totalRecords[i+1].weight{//자신의 무게도 같을 때
//                        if recordsTable1.totalRecords[i].number > recordsTable1.totalRecords[i+1].number{//번호가 작은 순으로 정렬하기
//                            temp = recordsTable1.totalRecords[i]
//                            recordsTable1.totalRecords.remove(at: i)
//                            recordsTable1.totalRecords.insert(temp, at: i+1)
//                        }
//                    }
//                }
//            }
//        }
//    }
//    print("다른 세가지 기준으로 정렬 후")
//    recordsTable1.totalRecords.map{print($0.number, $0.weight, $0.records, $0.winningRate, $0.numOfwinOver)}
//
//    return recordsTable1.totalRecords.map{$0.number}
//}
//class Boxer{
//    var number:Int!
//    var weight:Int!
//    var records:String!
//    var winningRate:Double!
//    var numOfwinOver:Int!
//}
//
//class Boxer_records{
//    var totalRecords:[Boxer] = []
//
//    func calcWinningRate(_ records:String)->Double{
//        var nCnt = records.filter{$0 == "N"}.count
//        if records.count-nCnt == 0{
//            return 0
//        }else{
//            return Double((records.filter{$0 == "W"}).count)/Double(records.count-nCnt)
//        }
//    }
//
//    func calcWinOverWight(_ records:String, _ myNum:Int, _ weights:[Int])->Int{
//        var count = 0
//        let temp:[String] = records.map({ r in
//          (String(r))
//         })
//        for i in 0..<temp.count{
//            if temp[i] == "W" && weights[i]>weights[myNum]{
//                count+=1
//            }
//        }
//        return count
//    }
//}
//
//
//print(solution([60,70,60] ,["NNN","NNN","NNN"]))

//MARK: 프로그래머스 위클리 챌린지 7th week
/*
 enter      leave       result
 [1,3,2]    [1,2,3]     [0,1,1]
 [1,4,2,3]  [2,1,3,4]   [2,2,1,3]
 [3,2,1]    [2,1,3]     [1,1,2]
 [3,2,1]    [1,3,2]     [2,2,2]
 [1,4,2,3]  [2,1,4,3]   [2,2,0,2]
 */
func solution_7_1(_ enter:[Int], _ leave:[Int]) -> [Int] { //테케1번 안됨
    //재실 명부를 만들어서 떠날때 시점으로 같이 있던 사람의 수를 반환해주면 됨
    var inTheRoom:[Int] = []
    var answer:[Int] = []
    for i in 0..<enter.count{
        answer.append(0)
    }
    var n = 0
    for i in enter{
        inTheRoom.append(i)//입장 시작
        var pre = 0
        while n<leave.count && inTheRoom.contains(leave[n]){//삭제 시작
            print(leave[n])
            inTheRoom.remove(at: inTheRoom.firstIndex(of: leave[n])!)
            answer[leave[n]-1] = inTheRoom.count
            if pre != 0 && n>0{
                answer[leave[n]-1] += n
            }
            
            n+=1
            pre += 1
        }
    }

    return answer
}

func solution_7_2(_ enter:[Int], _ leave:[Int]) -> [Int] {
    //재실 명부를 만들어서 떠날때 시점으로 같이 있던 사람의 수를 반환해주면 됨
    var answer = enter.map{_ in 0}
    print(answer)
    var room:[Int] = []
    var leave = leave
    
    for e in enter{
        room.append(e)
        if e == leave[0] {
            room.remove(at: room.firstIndex(of: e)!)
            answer[e-1] = room.count
            leave.removeFirst()
        }
    }
    
    print(answer)
    return answer
}
//solution_7_2(  [1,3,2],  [1,2,3]  )

//밑 코드 출처: https://vapor3965.tistory.com/99?category=975115
func solution_7_3(_ enter:[Int], _ leave:[Int]) -> [Int] {
    var ans = Array(repeating: 0, count: enter.count)
    var enter = Array(enter.reversed())
    var leave = Array(leave.reversed())
    var rooms = [Int]()
    
    while !enter.isEmpty || !leave.isEmpty {
        while !leave.isEmpty, rooms.contains(leave.last!) {
            let x = leave.removeLast()
            rooms.remove(at: rooms.firstIndex(of: x)!)
        }
        if enter.isEmpty { continue }
        rooms.forEach {
            ans[$0-1] += 1
        }
        let x = enter.removeLast()
        ans[x-1] += rooms.count
        rooms.append(x)
    }
    return ans
}
//solution_7_3(  [1,3,2],  [1,2,3]  )

func solution_7_4(_ enter:[Int], _ leave:[Int]) -> [Int]{
    var ans = Array(repeating: 0, count: enter.count)
//    var enter = Array(enter.reversed())
//    var leave = Array(leave.reversed())
    var enter = enter
    var leave = leave
    var room = [Int]()
    
    while !enter.isEmpty || !leave.isEmpty {
        while !leave.isEmpty && room.contains(leave.first!) {
            let outPerson  = leave.removeFirst()
            room.remove(at:room.firstIndex(of: outPerson)!)
        }
        if !enter.isEmpty{
            room.forEach {
                ans[$0-1] += 1
            }
            let inPerson = enter.removeFirst()
            ans[inPerson-1] += room.count
            room.append(inPerson)
        }
    }
    return ans
}
//solution_7_4([1,3,2], [1,2,3])
//MARK: 프로그래머스 위클리 챈린지 8th week
//func solution_8_1(_ sizes:[[Int]]) -> Int {
//    //먼저 각배열을 크기 순으로 정렬해서 긴쪽이 세로로 가도록 정렬!
//    let sizes_sorted = sizes.map({$0.sorted()})
//    print(sizes_sorted)
//    let w_max = sizes_sorted.map({$0[0]}).max()
//    let h_max = sizes_sorted.map({$0[1]}).max()
//    print(w_max, h_max)
//    let answer = w_max! * h_max!
//      위에거 한줄로 표현될거 같은데...
///* 두줄로
//    let sizes_sorted = sizes.map({$0.sorted()})
//    return sizes_sorted.map({$0[0]}).max()! * sizes_sorted.map({$0[1]}).max()!
//   한줄로
//    return sizes.map({$0.sorted()}).map({$0[0]}).max()! * sizes.map({$0.sorted()}).map({$0[1]}).max()!
//*/
//    return answer
//}
//solution_8_1([[60, 50], [30, 70], [60, 30], [80, 40]])

//MARK: 프로그래머스 코테 lv2 - 메뉴 리뉴얼 - 해결!
func solution_mr(_ orders:[String], _ course:[Int]) -> [String] {
    //딕셔너리 형태로 가능한 코스 조합 횟수
    var dic_course:[[String]:Int] = [:]//코스 조합이 들어갈 딕셔너리
    //각 코스 조합의 최대 횟수만 들어갈 변수
    var max_course:[[String]:Int] = [:]
    //조합 함수 - 직접 구현해보기!
    func combination(total: [String], shouldSelect: Int, current index: Int, selected: [String]){
        if shouldSelect == 0 {
            print(selected)
            //이부분은 내가 추가
            if dic_course.keys.contains(selected){
                dic_course[selected]!+=1
            }else{
                dic_course[selected] = 1
            }
        } else if index == total.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(total[index])
            combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
            combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
        }
    }
    //실제 주문 조합 횟수 세고 최고값만 저장
//    print(orders.max())
    for num in course{
        if num > Array(orders).count{
            break
        }
        print("===========\(num)===========")
        for i in orders{
            let menu_char = i.map({String($0)}).sorted()
            print("menu_char: \(menu_char)")
            combination(total: menu_char, shouldSelect: num, current: 0, selected: [])
        }
        let max = dic_course.values.max()!
        for i in dic_course.keys.filter({$0.count==num}){
            if dic_course[i]! < max || dic_course[i]! < 2{
                dic_course.removeValue(forKey: i)
            }
        }
        dic_course.map({print("남은거\($0)\n")})
        dic_course.map({max_course[$0.key] = $0.value})
        dic_course.removeAll()
    }
    print("========for end!========")
    max_course.map({print("\($0)\n")})
    print(max_course.keys.map({$0.joined()}).sorted())
    return max_course.keys.map({$0.joined()}).sorted()
}
//solution_mr(["XYZ", "XWY", "WXA"], [2,3,4])

//MARK: - Border!
//MARK: - Border!
// MARK: - 영민

// MARK: 프로그래머스 코테 lv1 - 비밀지도
/*
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
  
    var arr1New = ArrMake(n, arr1)
    var arr2New = ArrMake(n, arr2)
    for i in 0...arr1New.count-1{
        var answerKey = ""
        for z in 0...arr1New.count-1{
            if arr1New[i][z] + arr2New[i][z] == 0{
                answerKey += " "
            }else{
                answerKey += "#"
            }
            answer.append(answerKey)
    }
   
    }
    

    return answer
}


func ArrMake(_ n:Int,_ arr1:[Int])->[[Int]]{ // array 들을 2진법으로 바꾸는 함수
    var answer:[[Int]] = []
    var num = 0
    for number in arr1{
        var ArrTwo:Array<Int> = []
        var numberNew = number
        while true{
           num += 1
            ArrTwo.append(numberNew%2)
            print(numberNew%2)
            numberNew = numberNew/2
            if numberNew < 2{
                ArrTwo.append(numberNew/2)
                if ArrTwo.count != n{
                    for nums in 0...n-ArrTwo.count-1{
                        ArrTwo.append(0)
                        
                    }
                }
                false
            }
            answer.append(ArrTwo.reversed())
            }
        }
    
    
    
return answer
}

print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
*/




// MARK: 영민이 코드 - 프로그래머스 위클리 챌린지 2nd
//func solution(_ scores:[[Int]]) -> String {
//   var num = 0
//   var arr2:Array<Int> = []
//   var answer:String = ""
//    var ee:String!
//    for i in scores{
//       num += 1
//       arr2.append(totChk(dd(i,num-1)))
//   }
//   for z in arr2{
//       ee = type(z)
//    answer += ee
//   }
//
//   return answer
//   }
//
//func dd(_ scoresNum:[Int],_ num:Int)->[Int]{
//   let option = scoresNum[num]
//   var arr1 = scoresNum.sorted(by: >)
//   if option == arr1[0] && option > arr1[1]{
//       arr1.remove(at: 0)
//   }else if option == arr1[arr1.count-1] && option < arr1[arr1.count-2]{
//       arr1.removeLast()
//   }
//    print("arr1: \(arr1)")
//   return arr1
//}
//
//func totChk(_ scoresNum:[Int])->Int{
//   var tot = 0
//   var avg = 0
//   for i in scoresNum{
//       tot += i
//   }
//   avg = tot/(scoresNum.count)
//    print("total: \(tot), avg: \(avg)")
//   return avg
//}
//
//func type(_ num:Int)->String{
//   var rr:String!
//   if num >= 90{
//       rr = "A"
//   }else if num < 90 && num >= 80{
//       rr = "B"
//   }else if num < 80 && num >= 70{
//       rr = "C"
//   }else if num < 70 && num >= 50{
//       rr = "D"
//   }else if num < 50{
//       rr = "F"
//}
//   return rr
//}
//
//// print(dd([2,4,5,6,1],4))  dd 는 바르게 작동
////print(type(101))
//print(solution([[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]))
////[[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],


// MARK: yagom starter camp - 영민
//class PhoneBookService{
//
//    var phoneBook:[(String,Int,String)] = []
//
//    // 나중에 불러올 수 있는 배열을 만들어놓는다.
//
//    init(){   // class 가 선언되면 바로 실행 가능하게 init 활용
//        let endMessage = "[프로그램 종료]"
//        var whileStop = 0
//
//        while whileStop == 0{
//            print("1) 연락처 추가 2) 연락처 목록보기 3) 연락처 검색 x) 종료 \n 메뉴를 선택해주세요 :",terminator: "")
//            if let answer = readLine(){
//
//                if Int(answer) == 1{
//                    print("연락처 정보를 입력해주세요 :", terminator: "")
//                    let numberInformation = readLine()!.components(separatedBy: "/").map{ String($0) }
//                    numberAppend(numberInformation)
//                }else if Int(answer) == 2{
//                    phoneBook.sort(by: {$0.0 < $1.0} )
//                    (0..<phoneBook.count).map({ i in print("- \(phoneBook[i].0) / \(phoneBook[i].1) / \(phoneBook[i].2)")})
//                }else if Int(answer) == 3{
//                    print("연락처에서 찾을 이름을 입력해주세요 :", terminator: "")
//                    let input = readLine()!
//                    let Find = phoneBook.filter{$0.0 == input}.map({ f in print("- \(f.0) /\(f.1)/\(f.2) ")})
//                    Find.isEmpty ? print("연락처에 \(input)이 없습니다.") : print("",terminator: "")
//
//                }else if answer == "x"{
//                    whileStop = 1
//                }else{
//                    print("선택이 잘못되었습니다 확인 후 다시 입력해주세요")
//                }
//
//
//
//            }    // if 문 마무리
//        } // if let 마무리
//
//        print(endMessage)
//
//} // init 마무리
//
//    func checkAge(_ Age:String)->Bool{
//        // 1번 연락처 추가에서 numberAppend 함수 안에서 나이가 Int 만 들어있는지, 그렇다면 100 이 넘지 않는지 확인하는 함수
//        var chkage = Age.map{ $0 }.filter{$0.isNumber == false}
//        var chkValue = false
//        if chkage.isEmpty == true && Int(Age)! < 100{
//            chkValue = true
//        }
//        return chkValue
//    }
//
//
//
//func numberAppend(_ informationArr:[String]){
//    // 1번 연락처 추가에서 사용되는 함수 checkAge 라는 함수를 이 안에서 사용함
//    var informationArr = informationArr
//    for space in 0...2{
//        informationArr[space] = informationArr[space].filter{ $0 != " "}
//    }
//
//    var conditionChk = ""
//    if informationArr.count == 1{    // 배열에 아무것도 입력되지 않았으면
//        conditionChk = "1"
//    }else if checkAge(informationArr[1]) == false{ // 나이가 잘못 입력되었으면
//        conditionChk = "2"
//    }else if (informationArr[2].components(separatedBy: "-").filter{ $0 != " "}).count != 3{ // 번호에서 - 가 2개 이상 없으면
//        conditionChk = "3"
//    }else if (informationArr[2].map{ $0 }.filter{$0.isNumber == true}).count < 9{ // 번호에서 - 를 뺀 숫자가 9개 미만이면
//        conditionChk = "3"
//    }
//
//    switch conditionChk {
//        case "1":
//            print("아무것도 입력되지 않았습니다. 입력 형식을 확인해주세요.")
//        case "2":
//            print("입력한 나이정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
//        case "3":
//            print("입력한 연락처정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
//        case "":
//            // 모든 값이 바르게 들어가있다면 , class phoneBookService 의 프로퍼티인 phoneBook 에 tuple 형태로 입력
//            phoneBook.append((informationArr[0],Int(informationArr[1])!,informationArr[2]))
//            print("입력한 정보는 \(informationArr[1]) 세 \(informationArr[0])(\(informationArr[2])) 입니다.")
//        default:
//            print("")
//}
//}
//
//
//
//}
//
//let StarterCampStart = PhoneBookService()

//MARK: 위클리 챌린지 week6 복서

// weights 의 번호 = head2head 의 번호와 같다
// 정답은 -> [Int] 로 더 많이 이긴사람, 몸무게 높은 사람을 이긴 사람 순으로 정렬
//func winLate(_ boxer:[Int],_ head2head:String,_ boxerNum:Int)->[Int]{
//    let winLose = Array(head2head)   // 전적하나씩 배열
//    var win = 0, overNum = 0
//    var boxerNum = boxerNum
//    for box in 0..<winLose.count{
//        if winLose[box] == "W"{
//            win += 1
//            if boxer[boxerNum] < boxer[box]{
//            overNum += 1
//        }
//    }
//    }
//
//    return [win,overNum,boxerNum,boxer[boxerNum]]
//}
//
//func changeNum(_ changenumArr:[[Int]])->[Int]{
//    var changenumArr = changenumArr
//    //changenumArr.sorted(by: { $0[1] < $1[1] }).sorted(by: { $0[0] < $1[0]})
//    // overnum 까지 해줌
//    for Arr in 1..<changenumArr.count{
//        if changenumArr[Arr-1][0] == changenumArr[Arr][0] &&
//            changenumArr[Arr-1][1] < changenumArr[Arr][1]{
//            changenumArr.swapAt(Arr, Arr-1)
//        }else if changenumArr[Arr-1][0] == changenumArr[Arr][0] &&
//                    changenumArr[Arr-1][1] == changenumArr[Arr][1]
//        && changenumArr[Arr-1][3] < changenumArr[Arr][3]{
//            changenumArr.swapAt(Arr, Arr-1)
//        }else if changenumArr[Arr-1][0] == changenumArr[Arr][0] &&
//                    changenumArr[Arr-1][1] == changenumArr[Arr][1]
//                    && changenumArr[Arr-1][3] == changenumArr[Arr][3]
//        && changenumArr[Arr-1][2] > changenumArr[Arr][2]{
//            changenumArr.swapAt(Arr, Arr-1)
//        }
//    }
//    let answer = changenumArr.map{ $0[2] + 1}
//    return answer
//}
//
//
//func solution(_ weights:[Int], _ head2head:[String]) -> [Int] {
//    var winArray:[[Int]] = []
//    var changeArray:[[Int]] = []
//    var changeNumber:[Int] = []
//    for boxerEach in 0..<head2head.count{
//        let rate = winLate(weights, head2head[boxerEach], boxerEach)
//        winArray.append(rate)
//    }
//    print(winArray)
//    winArray = winArray.sorted(by: {$0[0] > $1[0]})
//    print("sorted: \(winArray)")
//    for count in 0..<winArray.count{
//        for num in 0..<winArray.count{
//            if winArray[count][0] == winArray[num][0] {
//                changeArray.append(winArray[count])
//                changeNumber.append(num)
//            }
//        }
//
//
//
//
//    }
//    return changeNum(winArray)
//
//}
//
//
//
//print(solution([50,82,75,120],["NLWL","WNLL","LWNW","WWLN"]))

//MARK: 실패율
//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    return failRate(N, stages)
//}
//func failRate(_ N:Int,_ stages:[Int])->[Int]{
//    print("N : \(N) , stages : \(stages)")
//    var eachStageRate:[[Double]] = []
//    let V = N
//    var failRate = 0.0
//
//    for stage in 1...V{
//        if stage <= stages.max()!{
//            let passNum = stages.filter{ $0 >= stage }
//            let stayNum = stages.filter{ $0 == stage }
//            if passNum.count == 0{
//                failRate = 0.0
//            }else{
//                failRate = Double(stayNum.count) / Double(passNum.count)
//            }
//        }else{
//            failRate = 0.0
//        }
//        eachStageRate.append([failRate, Double(stage)])
//    }
//
//    print("eachStageRate0: \(eachStageRate)")
//    eachStageRate.sort(by: { $0[0] > $1[0] })
//    print("eachStageRate1: \(eachStageRate)")
//
//    for eachStage in 0..<(eachStageRate.count-1){
//        if eachStageRate[eachStage][0] == eachStageRate[eachStage+1][0] && eachStageRate[eachStage][1] > eachStageRate[eachStage+1][1]{
//            eachStageRate.swapAt(Array<[Double]>.Index(eachStageRate[eachStage][1]),Array<[Double]>.Index(eachStageRate[eachStage+1][1]) )
//        }
//    }
//
//    print("eachStageRate2: \(eachStageRate)")
//
//    let answer = eachStageRate.map{ Int($0[1]) }.filter{ $0 <= V}
//
//    return answer
//}
//
//print(solution(1000, [2, 2, 2, 2, 2]))

//MARK: 프로그래머스 위클리 챌린지 7th week
func solution_ym(_ enter:[Int], _ leave:[Int]) -> [Int] { //시간초과 5개.. 알고리즘은 틀린게 없는거 같음
    var stayArray:Array<Int> = [] // 독서실 안 사람들
    var answerArray:[[Int]] = []
    var enterTwo = enter
    var answerInt:[Int] = []
    
    
    leave.forEach{
            if stayArray.contains($0) == false{ // 아직 입실하지 않았다면 - stayArray에 나갈 인원 없다면
                stayArray.append(contentsOf: enterTwo[0...enterTwo.firstIndex(of: $0)!]) // 해당값까지 넣고
                enterTwo.removeSubrange(0...enterTwo.firstIndex(of: $0)!) // stayArray에 넣은 인원은 들어갈 사람 명단에서 지우고
                //?
                answerArray.append(stayArray) // 독서실 안 사람들 answerArray 에 넣고
                stayArray.remove(at: stayArray.firstIndex(of: $0)!) // 그 사람 빼고
            }else{ // 입실을 한 사람이면
                answerArray.append(stayArray) // 독서실 안 사람들 answerArray 에 넣고
                stayArray.remove(at: stayArray.firstIndex(of: $0)!) // stayArray에서 그 사람 빼고
            }
        }
    for num in 1...enter.count{ // 모든 인원을 for 문으로 돌리고
        let count = answerArray.filter{ $0.contains(num) }.flatMap{ $0 } // 그 사람이 있는 배열을 이중배열에서 빼내서
        let answer = Array(Set(count)).count - 1 // set으로 중복 없애고 그 사람 빼고
        answerInt.append(answer) // 정답 배열에 번호대로 넣는다
    }

//    print(stayArray)
//    print(answerArray)
//
    
    print(answerInt)
    return answerInt
}
//solution_ym([1,4,2,3], [2,1,3,4])
