//
//  ViewController.swift
//  GrumpyBlog
//
//  Created by Student on 10/9/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var blogTitleOutlet: UITableView!
    
    var detailCell: BlogEntry!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blog1 = BlogEntry(title: "Cookies!!!", content: "Cookie Monster endorses Kate's cookies. Yah.")
        let blog2 = BlogEntry(title: "You're a contemporary Mexican", content: "True words spoken by...")
        let blog3 = BlogEntry(title: "Slack", content: "Emojis, Grumpy Cats, and more...")
        
        myBlog.entries.append(blog1)
        myBlog.entries.append(blog2)
        myBlog.entries.append(blog3)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        blogTitleOutlet.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBlog.entries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Default")
        
        
        cell.textLabel?.text = myBlog.entries[indexPath.row].title
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            myBlog.entries.removeAtIndex(indexPath.row)
            blogTitleOutlet.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        detailCell = myBlog.entries[indexPath.row]
        self.performSegueWithIdentifier("showBlogContent", sender: indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showBlogContent" {
            let vc = segue.destinationViewController as! BlogContentViewController
            vc.entry = detailCell
            
        }
    }
    

    
}



