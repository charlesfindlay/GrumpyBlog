//
//  BlogContentViewController.swift
//  GrumpyBlog
//
//  Created by Donovan Cotter on 10/9/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class BlogContentViewController: UIViewController {
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryContentLabel: UILabel!

    var entry: BlogEntry!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        entryTitleLabel.text = entry.title
        entryContentLabel.text = entry.content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
