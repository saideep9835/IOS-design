//
//  TabbarController.swift
//  IOS-design
//
//  Created by Saideep Reddy Talusani on 8/30/24.
//

import UIKit

class Tabbar: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "color", for: indexPath)
                cell.backgroundColor = rainbow[indexPath.item]
        //Default Content Configuration
                var content = cell.defaultContentConfiguration()
                content.text = rainbow[indexPath.item].accessibilityName.capitalized
                
                cell.contentConfiguration = content
                return cell
    }
    
    
    
    @IBOutlet weak var colorTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTable.dataSource = self
        colorTable.delegate = self
    }
}
