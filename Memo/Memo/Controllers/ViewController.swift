//
//  ViewController.swift
//  Memo
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 3/28/24.
//

import UIKit

class ViewController: UIViewController {

    var todoDataManager = DataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 70
        
        todoDataManager.makeTodoData()
    }

    @IBAction func addTodoButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "할 일 추가", message: "", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let add = UIAlertAction(title: "확인", style: .default) {_ in 
            if let txt = alert.textFields?[0] {
                if txt.text?.isEmpty != true {
                    // 테이블뷰의 셀에 추가
//                    todoDataManager.todoDataArray.append(<#Todo#>)
                } else {
                    // 확인 버튼 비활성화
                    add.isEnabled = false
                }
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(add)
        
        alert.addTextField(){ (tf) in
            tf.placeholder = "새로운 테스크를 입력해주세요"
            tf.isSecureTextEntry = false
        }
        
        self.present(alert, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoDataManager.getTodoData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoCell
        
        let todo = todoDataManager.getTodoData()[indexPath.row]
        
        cell.todoTitleLabel.text = todo.title
        cell.isCompleted.isOn = todo.isCompleted
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
