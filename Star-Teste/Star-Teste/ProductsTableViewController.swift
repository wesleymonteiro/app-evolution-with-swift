//
//  ProductsTableViewController.swift
//  Star-Teste
//
//  Created by Wesley Monteiro on 1/8/16.
//  Copyright © 2016 Wesley Monteiro. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Hello friend"
        cell.imageView?.image = UIImage(named: "telefone1")
        
        return cell
    }
    
}
