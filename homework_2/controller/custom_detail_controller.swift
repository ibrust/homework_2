//
//  custom_detail_controller.swift
//  homework_2
//
//  Created by Field Employee on 1/1/20.
//

import UIKit

class custom_detail_controller: UIViewController{
    
    var loaded_once = false
    var detail_id: Int? = nil
    
    @IBOutlet weak var test_label: UITextField!
    
    /*{
        didSet{
            if (loaded_once == true){
                guard let bound_id = detail_id else{return}
                array_of_cell_data[bound_id].main_label_text = test_label.text!
                print("in test labels didSet")
            }
        }
    }*/
    
    
    @IBOutlet weak var paragraph_label: UILabel!
    
    @IBOutlet weak var details_image: UIImageView!
    
    
    @IBAction func seg_handler(_ sender: UISegmentedControl) {
        guard let bound_id = detail_id else{return}
        switch sender.selectedSegmentIndex{
        case 0:
            array_of_cell_data[bound_id] = cell_data(.circle)
        case 1:
            array_of_cell_data[bound_id] = cell_data(.crescent)
        case 2:
            array_of_cell_data[bound_id] = cell_data(.cube)
        case 3:
            array_of_cell_data[bound_id] = cell_data(.hexagon)
        case 4:
            array_of_cell_data[bound_id] = cell_data(.triangle)
        case 5:
            array_of_cell_data[bound_id] = cell_data(.pentagon)
        case 6:
            array_of_cell_data[bound_id] = cell_data(.pyramid)
        case 7:
            array_of_cell_data[bound_id] = cell_data(.rectangle)
        case 8:
            array_of_cell_data[bound_id] = cell_data(.sphere)
        case 9:
            array_of_cell_data[bound_id] = cell_data(.square)
        case 10:
            array_of_cell_data[bound_id] = cell_data(.star)
        default:
            break
        }
        configure_detail()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loaded_once = true
        configure_detail()
    }
    
    private func configure_detail(){
        guard let bound_id = detail_id else{return}
        self.test_label.text = array_of_cell_data[bound_id].main_label_text
        self.details_image.image = array_of_cell_data[bound_id].cell_image
        self.paragraph_label.text = array_of_cell_data[bound_id].sub_label_text
        self.view.backgroundColor = array_of_cell_data[bound_id].background_color
    }
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
}




