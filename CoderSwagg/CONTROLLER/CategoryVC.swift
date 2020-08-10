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
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.myservicesInstance.getAllcategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:categoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! categoryTableViewCell
        
        
        return cell
    }
}

