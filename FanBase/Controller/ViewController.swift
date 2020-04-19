//
//  ViewController.swift
//  FanBase
//
//  Created by bennoui ihab on 4/19/20.
//  Copyright © 2020 bennoui ihab. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource
{
    
    @IBOutlet weak var TableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
    }
    

    //MARK : TableView Protocols
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell" , for : indexPath) as! MyTableViewCell
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return dataService.instance.getModels().count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let movieName = dataService.instance.getModels()[section].title
        return "\(movieName)"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 285
    }
    
  

}

