//
//  ViewController.swift
//  TemperatureConversionApp
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var FtoDlabeloutput: UILabel!
    @IBOutlet weak var DtoFlabeloutput: UILabel!
    @IBOutlet weak var FtoDoutput: UILabel!
    @IBOutlet weak var FtoDinput: UITextField!
    @IBOutlet weak var DtoFinput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DtoFbutton(_ sender: Any) {
        let number1: Double = Double(DtoFinput.text ?? "") ?? 0
        let tempans1: Double = number1 * 9 / 5 + 32
        DtoFlabeloutput.text = String(tempans1)
    }
    
    @IBAction func FtoDbutton(_ sender: Any) {
        let number2: Double = Double(FtoDinput.text ?? "") ?? 0
        let tempans2: Double = (number2 - 32) * 5 / 9
        FtoDlabeloutput.text = String(tempans2)
    }
}

