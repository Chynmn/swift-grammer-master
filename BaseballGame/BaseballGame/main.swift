//
//  main.swift
//  BaseballGame
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 3/12/24.
//

import Foundation

let game = BaseballGame()
var gamecnt = 0

while true {
    print("숫자 야구 게임을 시작합니다! 원하시는 번호를 입력해주세요")
    print("1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기")
    
    let menuInput = readLine()
    guard let menu = menuInput else {
        print("입력값이 올바르지 않습니다. 번호를 다시 입력하세요")
        continue
    }
    
    switch menu {
    case "1":   // 게임 시작하기
        game.start()
        gamecnt += 1
        continue
        
    case "2":   // 게임 기록보기
        print("< 게임 기록 보기 >")
        
        for i in 0..<gamecnt {
            print("\(i + 1)번째 게임 : 시도 횟수 -> \(game.record[i])")
        }
        continue
        
    case "3":   // 게임 종료하기
        print("숫자 야구 게임을 종료합니다")
        break
    default :   // 입력이 올바르지 않을 때
        print("‼️0~3의 숫자를 입력해주세요‼️\n")
        continue
    }
}
