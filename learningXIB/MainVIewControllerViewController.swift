//
//  MainVIewControllerViewController.swift
//  learningXIB
//
//  Created by absin on 12/29/17.
//  Copyright © 2017 absin.io. All rights reserved.
//

import UIKit

class MainVIewControllerViewController: UIViewController, UITextFieldDelegate {
    var input: String? = "Nothing entered"
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField.addTarget(self, action: #selector(MainVIewControllerViewController.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        input = textField.text
        labelText.text = input
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        input = textField.text
        return false
    }
    @IBAction func buttonAction(_ sender: Any) {
        labelText.text = input
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
