//
//  ViewController.swift
//  UpDownGame
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/04/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤 숫자를 선택하게 함.
    var comNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수 (선택사항)
//    var myNumber: Int = 1
    
    
    
    // 앱 실행 시 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) mainLabel에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) numberLabel에 "" (빈문자열)
        numberLabel.text = ""
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져온다.
        guard let numString = sender.currentTitle else { return }
        
        // 2) numberLabel이 변하도록 한다.
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에 저장. (선택사항) 문자열 --> 숫자로 변환한다음 저장
//        guard let num = Int(numString) else { return }
//
//        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 선택사항 대안
        // numberLabel에 있는 문자열 가져오기(옵셔널 벗기기)
        guard let myNumString = numberLabel.text else { return }
        // 타입 변환 (String --> Int)
        guard let myNumber = Int(myNumString) else { return }
        
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / Down / Bingo (메인레이블)
        if comNumber > myNumber {
            mainLabel.text = "UP"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😎"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) mainLabel에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 컴퓨터의 랜덤 숫자를 다시 선택하기
        comNumber = Int.random(in: 1...10)
        
        // 3) numberLabel에 "" (빈문자열)
        numberLabel.text = ""
        
        
    }
    
    

}

