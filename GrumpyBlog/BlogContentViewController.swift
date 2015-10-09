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

    var entry: BlogEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        entryContentLabel.text! = (entry?.content)!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
