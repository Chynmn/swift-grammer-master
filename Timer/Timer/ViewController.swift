//
//  ViewController.swift
//  Timer
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/7/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    // 숫자(선택된 초)를 관리하기 위한 변수
    var number = 0
    
    //타이머 객체를 담기 위한 변수
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    // 초기 세팅
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        
        // 슬라이더의 가운데 설정
        // slider.setValue(0.5, animated: true)
        slider.value = 0.5
    }
    
    // slider의 값이 변할 때마다 작동하는 함수
    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더의 값을 가지고 메인레이블의 텍스트를 셋팅
        
        let seconds = Int(slider.value * 60)    // 0.0 ~ 1.0 -> 0 ~ 60
        
        mainLabel.text = "\(seconds) 초"
        
        number = seconds
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈때마다 실행
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
            
            if number > 0 {
                number -= 1
    //            print(Float(number) / Float(60))
                slider.value = Float(number) / Float(60)
                mainLabel.text = "\(number)"
            } else {
                mainLabel.text = "초를 선택하세요"
                number = 0
                timer?.invalidate()
                AudioServicesPlaySystemSound(SystemSoundID(1000))
            }
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 초기화 세팅
        mainLabel.text = "초를 선택하세요"
        
        // 슬라이더의 가운데 설정
        slider.setValue(0.5, animated: true)
        
        number = 0
        timer?.invalidate()
    }
    
    
}

