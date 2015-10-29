//
//  HomeTableViewController.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 21/09/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "navigateToCompose", name: "NavigateToCompose", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.sharedManager.articles.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeTableViewCell", forIndexPath: indexPath) as! HomeTableViewCell
        cell.setupCell(withNewsData: DataManager.sharedManager.articles[indexPath.row])

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        DataManager.sharedManager.selectedIndex = indexPath.row
    }
    
    //MARK: - Notification andle methods
    func navigateToCompose() {
        self.performSegueWithIdentifier("navigate_to_compose", sender: self)
    }

    // MARK: - Navigation
    @IBAction func editorExited(segue: UIStoryboardSegue) {
        DataManager.sharedManager.editingText = nil
    }
    
    @IBAction func editorSaved(segue: UIStoryboardSegue) {
        DataManager.sharedManager.saveArticle()
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }

}
