//
//  MVVM1ViewController.swift
//  MVVM
//
//  Created by 민경준 on 2018. 4. 11..
//  Copyright © 2018년 민경준. All rights reserved.
//

import UIKit

class MVVM1ViewController: UIViewController {
    
    var viewModel: ViewModel?
    @IBOutlet weak var propertyTextField: UITextField!
    @IBOutlet weak var propertyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel.Instance
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton(_ sender: Any) {
        viewModel?.changeValue(input: propertyTextField.text!){
            returnValue in
            self.propertyLabel.text = returnValue
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
