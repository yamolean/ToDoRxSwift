//
//  AddTaskViewController.swift
//  TodoApp RxSwift
//
//  Created by 矢守叡 on 2020/01/16.
//  Copyright © 2020 yamolean. All rights reserved.
//

import UIKit
import RxSwift

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save() {
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex),
            let title = self.taskTitleTextField.text else {
            return
        }
        
        let task = Task(title: title, priority: priority)
    }
}
