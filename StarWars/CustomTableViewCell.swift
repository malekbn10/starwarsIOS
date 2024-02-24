//
//  CustomTableViewCell.swift
//  StarWars
//
//  Created by Tekup-mac-3 on 24/2/2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var filmName: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    @IBOutlet weak var directorName: UILabel!
    @IBOutlet weak var producerName: UILabel!
    @IBOutlet weak var Description: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
