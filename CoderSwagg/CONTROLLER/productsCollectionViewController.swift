//
//  productsCollectionViewController.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/11.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class productsCollectionViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var titleCategory: UILabel!
    private (set) public var productsforcategory = [Product]()

    var navigationtitle:String?
    
    @IBOutlet weak var colelctionview: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colelctionview.delegate = self
        colelctionview.dataSource = self
        titlebar()
    }
    
    func titlebar()
    {
        if let titletodisplay = navigationtitle
        {
            navigationItem.title = titletodisplay
        }
    }
    
    func poplateproductsforcategoryselected( Category: categorymodel)
    {
        productsforcategory = services.myservicesInstance.getallitems(categorytitle: Category.title)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsforcategory.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:itemsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! itemsCollectionViewCell
        
        cell.initializecell(categoryProducts: productsforcategory[indexPath.row])
        
        return cell
    }
    

}
