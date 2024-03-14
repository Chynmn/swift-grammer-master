//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 3/12/24.
//

import Foundation

class BaseballGame {
    // 시도 횟수를 저장하기 위한 배열
    var record = [Int]()
    
    // 스트라이크, 볼을 전역변수로 선언
    var strike = 0
    var ball = 0
    
    // 숫자야구를 시작하는 메서드
    func start() {
        print("< 게임을 시작합니다 >", "숫자를 입력하세요", separator: "\n", terminator: "\n")
        
        let answer = makeAnswer()
        var cnt = 0     // 시도 횟수 카운팅 프로퍼티
        
        while true {
//            var userInput = readLine()!.split(separator: "").map { Int(String($0))! }    
//         질문 : 위와 같이 쓸 경우, 사용자가 숫자가 아닌 데이터 타입을 입력했을 때는 어떻게 처리해야할까?
            let userInput = Int(readLine()!)

            guard let tryInput = userInput else { 
                print("입력값이 올바르지 않습니다.", "숫자를 다시 입력하세요", separator: "\n", terminator: "\n")
                continue
            }
            
            let inputNumArray = String(tryInput).map { Int(String($0))! }
            
            // 사용자가 올바르게 숫자 3개를 입력했는지 검사
            if inputNumArray.count != 3 {
                print("잘못 입력하였습니다. 0~9의 숫자 3개를 다시 입력하세요")
                continue
            } else if Set(inputNumArray).count != inputNumArray.count {
                print("입력된 숫자에 중복이 있습니다. 0~9의 숫자 3개를 다시 입력하세요")
                continue
            }
            
            // 정답
            if inputNumArray == answer {
                print("Victory! 다음 게임을 진행할 수 있습니다!")
                cnt += 1
                record.append(cnt)
                break
            }
            
            // 입력값과 정답을 비교
            distinguishAnswer(inputNumArray, answer)
            
            // 비교 결과를 스트라이크와 볼로 표현
            if strike == 0 && ball == 0 {
                print ("Noting")
                print("숫자를 입력하세요")
                cnt += 1
                continue
            } else if strike > 0 && ball == 0 {
                print ("\(strike) 스트라이크")
                print("숫자를 입력하세요")
                cnt += 1
                continue
            } else if strike == 0 && ball > 0 {
                print ("\(ball) 볼")
                print("숫자를 입력하세요")
                cnt += 1
                continue
            } else if strike > 0 && ball > 0 {
                print ("\(strike) 스트라이크 \(ball) 볼")
                print("숫자를 입력하세요")
                cnt += 1
                continue
            }
        }
    }
    
    // 매 게임마다 정답을 생성해 배열 형태로 반환하는 메서드
    func makeAnswer() -> [Int] {
        var answerArray = [Int]()
        
        while true {
            // 첫 번째 자리 수가 0이 아닌 숫자 야구 정답을 생성해서 배열에 저장 ex) ["1", "0", "2"]
            answerArray = String(Int.random(in: 102...987)).compactMap { $0.wholeNumberValue }
            
            // 중복되는 숫자가 있다면 다시 정답을 생성
            if Set(answerArray).count != answerArray.count {
                continue
            } else { break }
        }
        return answerArray
    }
    
    // 매 시도마다 스트라이크와 볼을 계산
    func distinguishAnswer(_ inputNumArray: [Int], _ answer: [Int]) -> Int {
        // 프로퍼티 초기화
        strike = 0
        ball = 0
        var overlapValue = 0
        
        for i in 0...2 {
            if inputNumArray[i] == answer[i] {
                strike += 1
            }
            for j in 0...2 {
                if inputNumArray[i] == answer[j] {
                    overlapValue += 1
                }
            }
        }
        ball = overlapValue - strike
        
        return strike & ball
    }
}

