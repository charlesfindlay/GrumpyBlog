//
//  Blog.swift
//  GrumpyBlog
//
//  Created by Student on 10/9/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import Foundation

var myBlog = Blog()

class Blog {
    
    var entries: [BlogEntry]
    
    init () {
        self.entries = []
    }
    
}