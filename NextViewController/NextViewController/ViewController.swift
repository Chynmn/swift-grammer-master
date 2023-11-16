//
//  ViewController.swift
//  NextViewController
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/15/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // 1) 코드로 화면 이동하는 방법(다음 화면이 코드로 작성되어있을 때)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        
        firstVC.someString = "전달 받은 문자열 입니다."
        //firstVC.mainLabel.text = "안녕하세요"  // 코드로 가능은 함
        
//        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서 화면 이동
    @IBAction func storyBoardWithCodeButtonTapped(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        secondVC.someString = "전달 받은 문자열2 입니다."
        //secondVC.mainLabel.text = "안녕하세요"    // 에러발생 (스토리보드 객체가 나중에 생김)
        //secondVC.modalPresentationStyle = .fullScreen
        
        present(secondVC, animated: true, completion: nil)
    }
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController
            
            thirdVC.someString = "전달 받은 문자열3 입니다."
            //thirdVC.mainLabel.text = "안녕하세요"    // 에러발생 (스토리보드 객체가 나중에 생김)
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "전달 받은 문자열4 입니다."
            //fourthVC.mainLabel.text = "안녕하세요"    // 에러발생 (스토리보드 객체가 나중에 생김)
        }
        
    }
    
    // 참고 - 4) 직접 세그웨이에서만 호출되는 메서드
    // 조건에 따라 다음화면 이동할지/말지
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        //print(#function)
//        if identifier == "toFourthVC" {
//            return false
//        }
        return true
    }
    
    
}

