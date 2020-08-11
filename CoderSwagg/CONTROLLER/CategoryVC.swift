//
//  ViewController.swift
//  CoderSwagg
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//
import UIKit

class CategoryVC: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.myservicesInstance.getAllcategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:categoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! categoryTableViewCell
        let allcategories = services.myservicesInstance.getAllcategory()
        let currentcategory = allcategories[indexPath.row]

        cell.updatecategorycell(mycategory: currentcategory)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let currentProduct = services.myservicesInstance.getAllcategory()[indexPath.row]
        
        performSegue(withIdentifier: "segue", sender: currentProduct)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"
        {
            let secondVC = segue.destination as! productsCollectionViewController
            if let categorytopass = sender as? categorymodel
            {
                secondVC.poplateproductsforcategoryselected(Category: categorytopass)
            }
        }
    }
    
    
}

