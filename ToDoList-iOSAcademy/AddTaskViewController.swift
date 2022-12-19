//
//  AddTaskViewController.swift
//  ToDoList-iOSAcademy
//
//  Created by Brian McIntosh on 12/19/22.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var field: UITextField!
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveItem))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveItem()
        return true
    }
    
    @objc func saveItem() {
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")
        
        update?()
        
        navigationController?.popViewController(animated: true)
    }
}
