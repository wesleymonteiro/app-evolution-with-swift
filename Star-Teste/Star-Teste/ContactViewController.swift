//
//  ContactViewController.swift
//  Star-Teste
//
//  Created by Wesley Monteiro on 1/7/16.
//  Copyright © 2016 Wesley Monteiro. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375,800)
    }

   
}
