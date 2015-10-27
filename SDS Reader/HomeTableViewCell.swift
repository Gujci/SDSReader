//
//  HomeTableViewCell.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 21/09/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(withIndexPath path: NSIndexPath){
        titleLabel.text = "\(path.row)"
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
