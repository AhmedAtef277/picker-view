//
//  CitiesViewController.swift
//  PickerView
//
//  Created by mac on 14/02/2022.
//

import UIKit

class CitiesViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {

    @IBOutlet weak var fieldOFCiities: UITextField!
    
    
    var picker = UIPickerView()
    var arrOfCities = ["Egypt" , "Turkey" , "Barcelona" , "Madrid" , "London"]

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        let toolBar = UIToolbar()
        	toolBar.sizeToFit()
        let barBtn = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(close))
        
        toolBar.setItems([barBtn], animated: true)
        fieldOFCiities.inputView = picker
        fieldOFCiities.inputAccessoryView = toolBar

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arrOfCities.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrOfCities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        fieldOFCiities.text = arrOfCities[row]
       // fieldOFCiities.isEnabled = false
        
        
        
        
    }
    
    @objc func close(){
        view.endEditing(true)
        
    }
    

   

}
