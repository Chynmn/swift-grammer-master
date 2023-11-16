//
//  FirstViewController.swift
//  NextViewController
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/15/23.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    let backButton: UIButton = {
        let backButton = UIButton(type: .custom)
        // 버튼 관련 설정
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .blue
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        return backButton
    }()
    
    // 전 화면에서 문자열을 전달 받을 저장속성
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUp()
        makeAutoLayout()
        
    }
    
    func setUp() {
        // 레이블 관련 설정
//        mainLabel.text = "FirstViewController"
        mainLabel.text = someString
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        view.addSubview(mainLabel)
        
        view.addSubview(backButton)
        
        view.backgroundColor = .gray
    }
    
    func makeAutoLayout() {
        // 레이블 오토레이아웃
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        // 버튼 오토레이아웃
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func backButtonTapped() {
        // 전 화면으로 되돌아가는 메서드 dismiss
        dismiss(animated: true, completion: nil)
    }


}
