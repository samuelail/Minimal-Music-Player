//
//  ViewController.swift
//  TableViewExample
//
//  Created by Sonar on 12/13/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    let animals = ["All of me ft Sia", "Racks", "Body on mine", "Thank you next"]
    @IBOutlet weak var contentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contentTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

