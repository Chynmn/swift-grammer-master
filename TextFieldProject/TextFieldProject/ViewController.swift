//
//  ViewController.swift
//  TextFieldProject
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/8/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.gray
        
        textField.keyboardType = UIKeyboardType.emailAddress    // 키보드 타입
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .next
        
        textField.becomeFirstResponder()    // 텍스트필드가 First응답객체 -> 키보드가 자동으로 올라옴
        
    }
    
    // 화면의 탭을 감지해 텍스트필드 외의 영역을 터치하면 입력을 종료시키는 메서드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 텍스트필드의 입력을 시작할 때 호출 (시작할지 말지의 여부 허락)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드의 입력을 시작할 때 호출 (시점)
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 시작했다.")
    }
    
    // Clear 실행 여부 -> 조건부로 clear를 실행할 때 유용
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트필드 글자 내용이 (한글자 한글자) 입력되거나 지워질 때 호출이 되고 (허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(#function)
//        print(string)
        
////        StackOverFlow내용
//        let maxLength = 10
//        let currentString: NSString = (textField.text ?? "") as NSString
//        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
//        return newString.length <= maxLength
//        
////        입력된 text가 숫자인경우 입력이 안되게 하는 코드
//        if Int(string) != nil { // 숫자로 변환이 된다면 nil이 아니므로
//            return false
//        } else {
//            // 10글자 이상 입력되는 것을 방지
//            guard let text = textField.text else { return true }
//            let newLength = text.count + string.count - range.length
//            return newLength <= 10
//        }
        
        // 또 다른 10글자 이상 입력되는 것을 방지하는 방법
        if (textField.text?.count)! + string.count > 10 {
            return false
        } else {
            return true
        }
        
    }
    
    // 텍스트필드의 엔터키가 눌러지면 다음 동작을 허락할것인지 말것인지 -> 다음화면 이동 or 네트워크 통신
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if textField.text == "" {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
    }
    
    // 텍스트필드의 입력이 끝났을 때 호출 (끝날지 말지를 허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트 필드의 입력이 실제 끝났을 때 호출 (시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("유저가 텍스트필드의 입력을 끝냈다.")
        textField.text = ""
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        // Done 버튼을 누르면 키보드가 내려가게 함.
        textField.resignFirstResponder()    // <-> becomeFirestResponder()
        
        
    }
    
    
    

}

