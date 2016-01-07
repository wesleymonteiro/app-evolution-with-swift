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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "1937 Desk Phone"
        
        imageView.image = UIImage(named: "telefone3")
    }

    @IBAction func buttonPressed(sender: AnyObject) -> Void {
        print("button tapped")
    }

}
