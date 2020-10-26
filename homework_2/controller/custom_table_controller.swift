//
//  custom_table_controller.swift
//  homework_2
//
//  Created by Field Employee on 1/1/20.
//

import UIKit

class custom_table_controller: UITableViewController{
    
    var table_size = 40
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // register the xib
        let custom_nib = UINib(nibName: "custom_cell", bundle: nil)
        self.tableView.register(custom_nib, forCellReuseIdentifier: "custom_cell_id")
        
        self.tableView.dataSource = self        // not sure if it's entirely necessary to set these here
        self.tableView.delegate = self          // also not sure why we had to call it off tableView
        
        for _ in 0..<table_size{
            let shape1 = random_shape()
            array_of_cell_data.append(cell_data(shape1))
        }
    }
    
    
    //Mark: - table view data source methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table_size
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
        let casted_cell = cell as? custom_cell
        casted_cell?.cell_id = indexPath.row
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let custom_cell_A = tableView.dequeueReusableCell(withIdentifier: "custom_cell_id") as? custom_cell
        custom_cell_A?.cell_id = indexPath.row

        return custom_cell_A!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        
        /*switch indexPath.row.isMultiple(of: 2){
        case true:
            print("even")
        case false:
            print("odd")
        }*/
        
        let main_storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let custom_controller1 = main_storyboard.instantiateViewController(identifier: "custom_detail_controller_id") as? custom_detail_controller
        else{
            print("epic failure in didSelectRowAt")
            return
        }
        custom_controller1.detail_id = indexPath.row
        
        self.navigationController?.pushViewController(custom_controller1, animated: true)
    }

}


