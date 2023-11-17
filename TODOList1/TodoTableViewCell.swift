//
//  TodoTableViewCell.swift
//  TODOList1
//
//  Created by user on 11/8/23.
//

import Foundation
import UIKit

protocol TodoCellDelegate: AnyObject {
    func cellTapped(cell: TodoTableViewCell)
}

class TodoTableViewCell: UITableViewCell {
    @IBOutlet weak var toDoLabel: UILabel!
    @IBOutlet weak var toDoButton: UIButton!
    
    weak var delegate: TodoCellDelegate?
    
    @IBAction func toDoButtonTapped(_ sender: Any) {
        delegate?.cellTapped(cell: self)
    }

    func updateCell(with todo: Todo) {
        toDoLabel.text = todo.name
        toDoButton.setImage(UIImage(systemName: todo.isCompleted ? "checkmark.square" : "square"), for: .normal)
    }
}
