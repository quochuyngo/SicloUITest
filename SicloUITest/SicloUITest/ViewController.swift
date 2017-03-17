//
//  ViewController.swift
//  SicloUITest
//
//  Created by Quoc Huy Ngo on 3/16/17.
//  Copyright © 2017 Quoc Huy Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hamburgerButton: UIButton!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        searchBar.backgroundColor = Color.blue
        
        navigationController?.navigationBar.barTintColor = Color.blue
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    
    func setup() {
        for parent in (navigationController?.navigationBar.subviews)! {
            for childView in parent.subviews {
                if(childView is UIImageView) {
                    childView.removeFromSuperview()
                }
            }
        }
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell")
        return cell!
    }
}

class Color {
    static let blue = UIColor(colorLiteralRed: 56/255, green: 108/255, blue: 121/255, alpha: 1)
}
