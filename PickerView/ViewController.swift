//
//  ViewController.swift
//  PickerView
//
//  Created by mac on 13/02/2022.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{

   
    @IBOutlet weak var displayData: UILabel!
    @IBOutlet weak var pickerCities: UIPickerView!
    var arrOfCities = ["Egypt" , "Turkey" , "Barcelona" , "Madrid" , "London"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCities.delegate = self
        pickerCities.dataSource = self

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrOfCities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrOfCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayData.text = arrOfCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: arrOfCities[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.cyan])
    }


}

