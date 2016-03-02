//
//  CYSearchResultTableViewController.swift
//  SeachBar-Swift
//
//  Created by Congying Ge on 16/3/2.
//  Copyright © 2016年 megvii. All rights reserved.
//

import UIKit

let STATU_BAR_HEIGHT = 20
let NAVIGATION_HEIGHT = 44
class CYSearchResultTableViewController: UITableViewController {
    
    var searchResults = [String]()
    var searchKey = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.contentInset = UIEdgeInsets(top: CGFloat(STATU_BAR_HEIGHT + NAVIGATION_HEIGHT), left: 0, bottom: 0, right: 0)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func renderData(searchKey: String, data: [String] ){
        self.searchKey = searchKey
        self.searchResults = data
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "搜索“\(searchKey)”"
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return searchResults.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier") as UITableViewCell?
        
        if cell == nil {
            cell = UITableViewCell(style: .Value1, reuseIdentifier: "reuseIdentifier")
        }
        
        // Configure the cell...
        cell?.textLabel?.text = searchResults[ indexPath.row ]
        
        return cell!
    }

}
