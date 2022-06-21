//
//  MyTableViewController.swift
//  MyTableViewController
//
//  Created by Lais Godinho on 14/06/22.
//

import UIKit


class MyTableViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  public var models: [Entry] = Entry.sampleData
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
//    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let nib = UINib(nibName: EntryTableViewCell.identifier, bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: EntryTableViewCell.identifier)
  }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return models.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: EntryTableViewCell.identifier, for: indexPath) as! EntryTableViewCell
//    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) //as! EntryTableViewCell
    cell.titleLabel?.text = models[indexPath.row].name
//    cell.typeLabel?.text = models[indexPath.row].type
//    cell.textLabel?.text = models[indexPath.row].name
    return cell
  }
}
