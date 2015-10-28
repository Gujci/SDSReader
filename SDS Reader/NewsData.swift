//
//  NewsData.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 28/10/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class NewsData: NSObject {
    
    var title : String! {
        get {
            return wholeText.nthLine(1)
        }
    }
    var preview : String!  {
        get {
            let firstLineLength = self.title!.characters.count
            if let text = wholeText[(firstLineLength + 1)...(firstLineLength + 41)] {
                return  text + "..."
            }
            else {
                return ""
            }
        }
    }
    var wholeText : String!
    
    init(withText text: String) {
        wholeText = text
    }

}
