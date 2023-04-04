//
//  ViewController.swift
//  RPSGame
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/03/31.
//

import UIKit

class ViewController: UIViewController {
    // 변수 / 속성
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    var myChoice: Rps = Rps.rock
    
    
    // 함수 / 메서드
    // 앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 첫 번째/두 번째 이미지뷰에 준비(목) 이지미를 띄워야 함
        comImageView.image = #imageLiteral(resourceName: "ready")   // #imageLiteral(
        myImageView.image = UIImage(named: "ready.png")     // UIImage(name: String)
        
        // 2) 첫 번째/두 번째 레이블에 "준비"라고 문자열을 띄워야 함
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }

    @IBAction func rpsButtomTapped(_ sender: UIButton) {
        // 가위/바위/보(enum)를 선택해서 그 정보를 저장 함
//        guard let title = sender.currentTitle else { return }
        // 버튼의 문자를 가져옴. title이 명확히 있기 때문에 강제로 옵셔널 언래핑 함.
        let title = sender.currentTitle!
        
        switch title {
        case "가위":
            // 가위 열거형을 만들어서 저장
            myChoice = Rps.scissors
//            print("가위")
        case "바위":
            // 바위 열거형을 만들어서 저장
            myChoice = Rps.rock
//            print("바위")
        case "보":
            // 보 열겨형을 만들어서 저장
            myChoice = Rps.paper
//            print("보")
        default:
            break
        }
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 승패를 판단
        if comChoice == myChoice {
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 다시 준비 이미지뷰에 표시
        // 2) 컴퓨터가 다시 준비 레이블에 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        
        // 3) 내 선택 이미지뷰에도 준비 이미지를 표시
        // 4) 내 선택 레이블에도 준비 문자열 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "준비"
        
        // 5) 메인 레이블 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        
        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        
        
    }
    
    
    
    

}


