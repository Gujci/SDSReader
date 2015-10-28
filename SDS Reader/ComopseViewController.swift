//
//  ComopseViewController.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 29/09/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class ComopseViewController: UIViewController, UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Text View Delegate methods
    func textViewDidChange(textView: UITextView) {
        DataManager.sharedManager.editingText = textView.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
