//
//  ProductsTableViewController.swift
//  Star-Teste
//
//  Created by Wesley Monteiro on 1/8/16.
//  Copyright © 2016 Wesley Monteiro. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?

    @IBAction func about(sender: AnyObject) {
        //performSegueWithIdentifier("ShowContact", sender: sender)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "telefone1"
        product1.cellImage = "telefone1"
        
        product2.name = "1921 Dial Phone"
        product2.productImage = "telefone2"
        product2.cellImage = "telefone2"
        
        product3.name = "1937 Desk Set"
        product3.productImage = "telefone3"
        product3.cellImage = "telefone3"
        
        product4.name = "1984 Motorola Portable"
        product4.productImage = "telefone4"
        product4.cellImage = "telefone4"
        
        products = [product1,product2,product3,product4]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let p = products{
            return p.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product{
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage (named: i)
            }
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            guard  let cell = sender as? UITableViewCell,
                   let index = tableView.indexPathForCell(cell) else {
                    return }
            
            productVC?.product = products?[index.row]
        }
    }
    
}
