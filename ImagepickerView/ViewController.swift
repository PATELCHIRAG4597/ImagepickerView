//
//  ViewController.swift
//  ImagepickerView
//
//  Created  CodeInfoWay CodeInfoWay on 4/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var waterparkTxt: UITextField!
    
var cityList = ["ahmeadabad","surat","pune","rajkot","mumbai","chennai","banglore"]

let cityPicker = UIPickerView()
let toolbar = UIToolbar()
    override func viewDidLoad() {
        super.viewDidLoad()
        cityPicker.delegate = self
        cityPicker.dataSource = self
        waterparkTxt.inputView = cityPicker
        toolbar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonePressed))
        toolbar.items = [doneBtn]
        waterparkTxt.inputAccessoryView = toolbar
        
    }
        @objc func doneButtonePressed()
    {
        let SelectedCities = cityList[cityPicker.selectedRow(inComponent: 0)]
        waterparkTxt.text = SelectedCities
        self.view.endEditing(true)
    }

}
extension ViewController :UIPickerViewDelegate,UIPickerViewDataSource{
         func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
   }
 // how much number of rows in perticular selaction
         func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return cityList.count
}
  //data display in row
         func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return cityList[row]
    }
    
}
