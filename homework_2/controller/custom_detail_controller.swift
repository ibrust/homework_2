//
//  custom_detail_controller.swift
//  homework_2
//
//  Created by Field Employee on 1/1/20.
//

import UIKit

class custom_detail_controller: UIViewController{
    
    var loaded_once = false
    
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
    
    var detail_id: Int? = nil
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loaded_once = true
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




