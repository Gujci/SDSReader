//
//  DataManager.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 28/10/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class DataManager: NSObject {

    static let sharedManager = DataManager()
    
    private(set) lazy var articles: Array <NewsData> = {
        return Array<NewsData>()
    }()
    
    var selectedIndex: Int!
    var actualArticle : NewsData! {
        get {
            return articles[selectedIndex]
        }
    }
    
    var editingText: String!
    
    override init() {
        super.init()
        self.articles = [
            NewsData(withText: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim aminim veniam"),
            NewsData(withText: "Excepteur sint occaecat\ncupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            NewsData(withText: "Sed ut perspiciatis unde omnis\niste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore")
        ]
    }
    
    func saveArticle() {
        if let text = editingText {
            self.articles.append(NewsData(withText: text))
        }
    }
}
