//
//  NewsDetailViewController.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 28/10/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {

    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextView.text = DataManager.sharedManager.actualArticle.wholeText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
