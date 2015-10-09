//
//  ViewController.swift
//  GrumpyBlog
//
//  Created by Student on 10/9/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var myBlog = [BlogEntry]()
    let blog = BlogEntry(title: "Blog One", content: "This is our first blog")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myBlog.append(blog)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBlog.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")
        
        
        cell.textLabel?.text = myBlog[indexPath.row].title
        
        return cell
    }
    

    
}



