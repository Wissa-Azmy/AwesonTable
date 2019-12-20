//
//  ViewController.swift
//  AwesonTable
//
//  Created by Wissa Azmy on 12/20/19.
//  Copyright © 2019 Wissa Azmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var items = [String]()
    var reustableTable: GenericTableView<String, UITableViewCell>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { (_) in
            self.items = Array(repeating: "item", count: 10)
            self.reustableTable.reload(data: self.items)
        }
        setupTable()
    }

    func setupTable() {
        reustableTable = GenericTableView(frame: view.frame, items: items, config: { (item, cell) in
            cell.textLabel?.text = item
        }, selectHandler: { (item) in
            print(item)
        })
        
        view.addSubview(reustableTable)
    }

}

