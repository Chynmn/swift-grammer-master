//
//  TodoCell.swift
//  Memo
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 3/29/24.
//

import UIKit

class TodoCell: UITableViewCell {
    
    @IBOutlet weak var todoTitleLabel: UILabel!
    
    @IBOutlet weak var isCompleted: UISwitch!
    
    @IBAction func isCompletedSwitch(_ sender: UISwitch) {
        // 텍스트 가로선
        todoTitleLabel.attributedText = todoTitleLabel.text?.strikeThrough()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}
