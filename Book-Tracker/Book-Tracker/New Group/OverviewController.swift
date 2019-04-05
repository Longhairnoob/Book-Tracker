//
//  OverviewController.swift
//  Book-Tracker
//
//  Created by Anders Berntsen on 05/04/2019.
//  Copyright © 2019 Anders Berntsen. All rights reserved.
//

import UIKit

class OverviewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var bookArray = [Book]()
    
    struct Book {
        var title: String
        var author: String
        var isRead: Bool
        var progress: Float
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as! BookCell
        
        cell.bookTitle.text = bookArray[indexPath.row].title
        cell.bookAuthor.text = bookArray[indexPath.row].author
        cell.bookProgress.progress = bookArray[indexPath.row].progress
        
        return cell
    }
    
}
