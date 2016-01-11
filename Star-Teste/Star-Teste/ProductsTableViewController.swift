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
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "telefone1"
        product1.cellImage = "telefone1"
        
        product1.name = "1921 Dial Phone"
        product1.productImage = "telefone2"
        product1.cellImage = "telefone2"
        
        product1.name = "1937 Desk Set"
        product1.productImage = "telefone3"
        product1.cellImage = "telefone3"
        
        product1.name = "1984 Motorola Portable"
        product1.productImage = "telefone4"
        product1.cellImage = "telefone4"
        
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
        
        if let p = products?[indexPath.row]{
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
            
            if let cell = sender as? UITableViewCell{
                if let index = tableView.indexPathForCell(cell){
                    productVC?.product = products?[index.row]
                    
                }
            }
        }
    }
    
}
