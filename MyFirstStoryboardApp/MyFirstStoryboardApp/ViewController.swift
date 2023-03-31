//
//  ViewController.swift
//  MyFirstStoryboardApp
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2023/03/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mainLabel.text = "방가방가"
//        mainLabel.backgroundColor = UIColor.yellow
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        mainLabel.text = "안녕하세요"
//        mainLabel.backgroundColor = UIColor.yellow
        
        myButton.backgroundColor = UIColor.yellow
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
    }
    
    
    
    
    
    
}

