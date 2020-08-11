//
//  categoryTableViewCell.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class categoryTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundimageCell: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backgroundimageCell.layer.cornerRadius = 24.5
        backgroundimageCell.clipsToBounds = true
    }

    func updatecategorycell(mycategory: categorymodel)
    {
        backgroundimageCell.image = UIImage(named: mycategory.imageName)
        categoryName.text = mycategory.title
    }
    
    

}
