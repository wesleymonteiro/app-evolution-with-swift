//
//  ProductViewController.swift
//  Star-Teste
//
//  Created by Wesley Monteiro on 1/7/16.
//  Copyright © 2016 Wesley Monteiro. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let p = product {
        nameLabel.text = p.name
        
        if let i = p.productImage{
        imageView.image = UIImage(named: i)
            }
        }
    }

    @IBAction func buttonPressed(sender: AnyObject) -> Void {
        print("button tapped")
    }

}
