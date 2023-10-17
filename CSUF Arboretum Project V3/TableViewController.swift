//
//  TableViewController.swift
//  CSUF Arboretum Project V3
//
//  Created by csuftitan on 10/17/23.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableview1: UITableView!
    
    let colors = [ "red", "blue", "green", "purple", "yellow"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableview1.delegate = self
        tableview1.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // MARK: - UITableViewDataSource methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Implement the number of rows in section logic here
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Implement cell for row at indexPath logic here
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell1.textLabel?.text = colors[indexPath.row]
        
        return cell1
    }

    // MARK: - UITableViewDelegate methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Implement didSelectRowAt logic here
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
