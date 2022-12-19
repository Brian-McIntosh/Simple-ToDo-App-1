//
//  TaskDetailViewController.swift
//  ToDoList-iOSAcademy
//
//  Created by Brian McIntosh on 12/19/22.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var task: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
//        let newCount = count - 1
//
//        UserDefaults().set(newCount, forKey: "count")
//        UserDefaults().set(nil, forKey: "task_\(currentPosition)")
        
        navigationController?.popViewController(animated: true)
    }
}
