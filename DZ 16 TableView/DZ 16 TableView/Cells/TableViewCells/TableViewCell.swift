//
//  TableViewCell.swift
//  DZ 16 TableView
//
//  Created by Евгений Ганусенко on 8/7/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lable_: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
