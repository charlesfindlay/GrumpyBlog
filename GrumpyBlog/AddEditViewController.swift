//
//  AddEditViewController.swift
//  GrumpyBlog
//
//  Created by Student on 10/9/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class AddEditViewController : UIViewController {
    
    
    @IBOutlet weak var blogTitleInput: UITextField!
    @IBOutlet weak var blogContentInput: UITextView!
    
    
    
    @IBAction func cancelBlogAddEdit(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) {
            
        }
    }
    
    
    @IBAction func saveBlogEntry(sender: AnyObject) {
        let entry = BlogEntry(title: blogTitleInput.text!, content: blogContentInput.text!)
        ViewController().myBlog.append(entry)
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
