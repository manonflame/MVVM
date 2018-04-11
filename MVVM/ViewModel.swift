//
//  ViewModel.swift
//  MVVM
//
//  Created by 민경준 on 2018. 4. 11..
//  Copyright © 2018년 민경준. All rights reserved.
//

import Foundation

class ViewModel{
    static let Instance = ViewModel()

    var model: Model?
    init(){
        print("ViewModel Instance")
        self.model = Model()
    }
    
    func changeValue(input: String, completion: @escaping (String) -> ()){
        self.model?.Property = input
        completion((self.model?.Property)!)
    }
}
