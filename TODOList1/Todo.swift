//
//  Todo.swift
//  TODOList1
//
//  Created by user on 11/8/23.
//

import Foundation

class Todo {
    var name: String
    var isCompleted: Bool
    var id: UUID
    
    init(name: String, isCompleted: Bool, id: UUID = UUID()) {
        self.name = name
        self.isCompleted = isCompleted
        self.id = id
    }
}
