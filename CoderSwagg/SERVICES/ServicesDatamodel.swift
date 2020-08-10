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
    
    private let myCategory = [categorymodel(title: "T-SHIRT", imageName: "shirts.png"),
    categorymodel(title: "HOODIES", imageName: "hoodies.png"),
    categorymodel(title: "HATS", imageName: "hats.png"),
    categorymodel(title: "DIGITAL", imageName: "digital.png")]
    
    
    func getAllcategory() ->[categorymodel]
    {
        return myCategory
    }
    
}
