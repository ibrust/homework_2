//
//  custom_cell.swift
//  homework_2
//
//  Created by Field Employee on 12/31/19.
//

import UIKit

// this view is interacting directly with the model. this violates the architecture
// how would this be done better? would the table controller be some sort of delegate? would the cell need to communicate with the controller...?
// would the table have to use some sort of unique cell identifier?
// seems like it's difficult to separate a cell from its data
// maybe the controller would have computed properties which these computed properties call on? so it's like a series of computations that take place to get the data?
class custom_cell: UITableViewCell {
    
    var cell_id: Int = 0 {
        didSet{
            configure_cell()
        }
    }
    
    @IBOutlet weak var custom_button: UIButton!
    
    @IBAction func button_press(_ sender: Any) {
        var new_cell_data = random_shape()
        while new_cell_data == array_of_cell_data[cell_id].shape{
            new_cell_data = random_shape()
        }
        array_of_cell_data[cell_id] = cell_data(new_cell_data)
        configure_cell()
    }
    
    @IBOutlet weak var slider_wrapper: UIView!
    @IBOutlet weak var custom_cell_label: UILabel!
    @IBOutlet weak var custom_cell_image: UIImageView!
    @IBOutlet weak var time_label: UILabel!

    func configure_cell(){
        self.custom_cell_label.text = array_of_cell_data[cell_id].main_label_text
        self.custom_cell_image.image = array_of_cell_data[cell_id].cell_image
        self.time_label.text = array_of_cell_data[cell_id].last_modified
        self.custom_cell_label.backgroundColor = array_of_cell_data[cell_id].background_color
        self.custom_cell_image.backgroundColor = array_of_cell_data[cell_id].background_color
        self.time_label.backgroundColor = array_of_cell_data[cell_id].background_color
        self.slider_wrapper.backgroundColor = array_of_cell_data[cell_id].background_color
        self.custom_button.backgroundColor = array_of_cell_data[cell_id].background_color
    }
    
}
