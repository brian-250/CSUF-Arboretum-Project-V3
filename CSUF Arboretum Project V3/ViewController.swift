//
//  ViewController.swift
//  CSUF Arboretum Project V3
//
//  Created by csuftitan on 10/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: Any) {
        if let tableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
            self.navigationController?.pushViewController(tableViewController, animated: true)
        }
    }
    
    

}

