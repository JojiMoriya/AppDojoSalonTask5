//
//  ViewController.swift
//  AppDojoSalonTask5
//
//  Created by 守屋譲司 on 2020/10/08.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = self
        textField2.delegate = self
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        guard let num1 = Double(textField1.text ?? "") else {
            alert(title: "注意", message: "割られる数を入力してください")
            return
        }
        
        guard let num2 = Double(textField2.text ?? "") else {
            alert(title: "注意", message: "割る数を入力してください")
            return
        }
        
        guard textField2.text != "0" else {
            alert(title: "注意", message: "割る数には０以外を入力してください")
            return
        }
        
        resultLabel.text = String(num1 / num2)
    }
    
    func alert (title: String, message: String) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

