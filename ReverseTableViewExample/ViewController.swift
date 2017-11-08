//
//  ViewController.swift
//  ReverseTableViewExample
//
//  Created by Murawaki on 2017/11/08.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: ReverseTableView!
    var items = ["first", "second", "third"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addCellButtonTouchUpped(_ sender: UIButton) {
        items.append("足された  ")
        tableView.reloadData()
    }
    
    @IBAction func minusCellButtonTouchUpped(_ sender: UIButton) {
        items.removeLast()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row] + " cell"
        return cell
    }
    
}

