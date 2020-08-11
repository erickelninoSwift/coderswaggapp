//
//  product.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/11.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

struct Product
{
    private (set) public var title:String
    private(set) public var price:String
     private(set) public var ImageName:String
    
    init(title: String , price: String , ImageName: String) {
        self.title = title
        self.price = price
        self.ImageName = ImageName
    }
    
}
