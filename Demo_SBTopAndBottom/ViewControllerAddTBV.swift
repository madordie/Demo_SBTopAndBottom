//
//  ViewControllerAddTBV.swift
//  Demo_SBTopAndBottom
//
//  Created by 孙继刚 on 15/10/26.
//  Copyright © 2015年 Madordie. All rights reserved.
//

import UIKit

class ViewControllerAddTBV: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //  --- UIViewController ---
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.navigationItem.title = self.title
    }
    
    //  --- UITableViewDelegate, UITableViewDataSource ---
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell")
        cell?.textLabel?.text = "\trow:\(indexPath.row)"
        return cell!
    }
}
