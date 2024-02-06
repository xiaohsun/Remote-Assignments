//
//  TableViewController.swift
//  week1_homework_1
//
//  Created by 徐柏勳 on 2/4/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 100
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 10 : 5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath) as? TableViewCell else { fatalError() }
        
        cell.label.text = "This is section \(indexPath.section), row \(indexPath.row)"
        
        return cell
    }
    

    // 2.
    // 1) 首先會執行 numberOfSections，得到該 tableView 總共有幾個 section
    // 2) 執行 numberOfRowsInSection，得到各個 section 中各有幾個 row
    // 3) 執行 cellForRowAt，賦予每個 row 數值
    
    // 以上三種為必定要呼叫的方法，另外會依照需求呼叫其餘 optional 的方法
    
    // - titleForHeaderInSection / titleForFooterInSection，設定 section footer 和 header
    // - sectionIndexTitles 給予每個 section index title
    // - canMoveRowAt 允許 row 可以移動
    // - canEditRowAt 允許 row 可以編輯

}


