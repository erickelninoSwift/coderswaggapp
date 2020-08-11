//
//  ServicesDatamodel.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

class services
{
    static let myservicesInstance = services()
    
    private let myCategory = [categorymodel(title: "T-SHIRT", imageName: "shirts"),
    categorymodel(title: "HOODIES", imageName: "hoodies"),
    categorymodel(title: "HATS", imageName: "hats"),
    categorymodel(title: "DIGITAL", imageName: "digital")]
    
    
    func getAllcategory() ->[categorymodel]
    {
        return myCategory
    }
    
}
