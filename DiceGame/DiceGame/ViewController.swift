//
//  ViewController.swift
//  DiceGame
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/03/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]   // #imageLiteral(

    // 앱의 화면에 들어오면 가장 먼저 실행되는 메서드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 앱 실행 시 첫 화면이 주사위 2를 나타내게 함.
        firstImageView.image = diceArray[2]
        secondImageView.image = diceArray[2]
        
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 첫 번째 이미지 뷰의 이미지를 랜덤으로 변경
        firstImageView.image = diceArray.randomElement()
        
        // 두 번째 이미지 뷰의 이미지를 랜덤으로 변경
        secondImageView.image = diceArray.randomElement()
        
    }
    
    

}

