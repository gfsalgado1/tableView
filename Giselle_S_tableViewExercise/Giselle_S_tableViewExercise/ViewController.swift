//
//  ViewController.swift
//  Giselle_S_tableViewExercise
//
//  Created by Giselle Salgado on 8/4/20.
//  Copyright © 2020 Giselle Salgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let numbers = ["Number 1","Number 2", "Number 3", "Number 4", "Number 5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return numbers.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = numbers[indexPath.row]
        return cell!
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = numbers[indexPath.row]
        let alert = UIAlertController(title: "This is your new lucky number", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OKAY", style: .default, handler: { action-> Void in })
        alert.addAction(okAction)
        
        self.present(alert, animated:true, completion: nil)
    }
}

