//
//  DataManager.swift
//  Memo
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 3/29/24.
//

import UIKit

class DataManager {
    var todoDataArray: [Todo] = []
    
    func makeTodoData() {
        todoDataArray = [
            Todo(id: 0, title: "과제하기", isCompleted: false)
        ]
    }
    
    func getTodoData() -> [Todo] {
        return todoDataArray
    }
}
