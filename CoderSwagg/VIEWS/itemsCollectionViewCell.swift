//
//  itemsCollectionViewCell.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/11.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class itemsCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var imagecollectionviewname: UIImageView!
    
    @IBOutlet weak var itemdescriptions: UILabel!
    @IBOutlet weak var pricesitrems: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        imagecollectionviewname.layer.cornerRadius = 5.0
       
    }
    
    
    func initializecell(categoryProducts: Product)
    {
        imagecollectionviewname.image = UIImage(named: categoryProducts.ImageName)
        itemdescriptions.text = categoryProducts.title
        pricesitrems.text = categoryProducts.price
    }
    
    
}
