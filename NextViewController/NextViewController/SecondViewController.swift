//
//  SecondViewController.swift
//  NextViewController
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 11/15/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = someString
     
    }
    

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
