//
//  ViewController.swift
//  actualTableNotes
//
//  Created by ALVIN CHEN on 10/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var numbers = [3,5,1,4,321,43]
    var books = [Book]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        books.append(Book(author: "tls123", title: "TWTS", pages: 15000, chapters: 3000))
    }
    
    @IBAction func addAction(_ sender: UIBarButtonItem) {
       var blah = textFieldOutlet.text!
        var num = Int(blah)
        if let n = num{
  //          numbers.append(n)
  //          tableViewOutlet.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return numbers.count
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        cell.authorOutlet.text = books[indexPath.row].author
        cell.titleOutlet.text = books[indexPath.row].title
        cell.pagesOutlet.text = "\(books[indexPath.row].pages)"
        cell.chaptersOutlet.text = "\(books[indexPath.row].chapters)"
     //   cell.textLabel?.text = "\(numbers[indexPath.row])"
    //   cell.detailTextLabel?.text = "hello"
        return cell

    }
    

    
}

