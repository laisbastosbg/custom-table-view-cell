//
//  EntryTableViewCell.swift
//  MyTableViewController
//
//  Created by Lais Godinho on 15/06/22.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
  
  static var identifier = "EntryTableViewCell"
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var typeLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
}
