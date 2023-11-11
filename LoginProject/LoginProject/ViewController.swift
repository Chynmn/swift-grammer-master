//
//  ViewController.swift
//  LoginProject
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/8/23.
//

import UIKit

class ViewController: UIViewController {

    // 메모리상에만 존재할 뿐 실제 뷰에는 보여지지 않는 상태
    let emailTextFieldView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        makeUI()
    }

    func makeUI() {
        emailTextFieldView.backgroundColor = UIColor.darkGray
        
        // 뷰 하위에 올리는 코드
        view.addSubview(emailTextFieldView)
        
        // 자동 오토 레이아웃 설정을 끄고 수동으로 설정.
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        // 왼쪽 오토 레이아웃
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        // 오른쪽 오토 레이아웃
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        // 위쪽 오토 레이아웃
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        // 높이 설정
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    

}

