//
//  CharacterCell.swift
//  Characters
//
//  Created by arthur takahashi on 08/09/2018.
//  Copyright © 2018 arthur takahashi. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var country: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(model: ModelData) {
        self.job.text = model.job
        self.name.text = model.name
        self.country.text = model.country
        self.icon.image = model.icon
    }
}
