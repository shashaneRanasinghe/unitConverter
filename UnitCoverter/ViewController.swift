//
//  ViewController.swift
//  UnitCoverter
//
//  Created by user188413 on 3/17/21.
//

import UIKit

class WeightViewController: UIViewController {
    @IBOutlet weak var txtKg: UITextField!
    
    @IBOutlet weak var txtgrams: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    @IBOutlet weak var txtPounds: UITextField!
    
    @IBOutlet weak var saveBtn: UIBarButtonItem!
    @IBOutlet weak var txtStone: UITextField!
    var historyArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "WeightHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func KgConvert(_ sender: Any) {
        let textInputValue = txtKg.text ?? "0"
        let value = Double(textInputValue) ?? 0
        
               
        txtgrams.text = (String)(round(100 * (value * 1000)) / 100)
        txtOunce.text = (String)(round(100 * (value * 35.274)) / 100)
        txtPounds.text = (String)(round(100 * (value * 2.205)) / 100)
        txtStone.text = (String)(round(100 * (value / 6.35)) / 100)
    }
    
    @IBAction func GramConvert(_ sender: Any) {
        let textInputValue = txtgrams.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
                txtKg.text = (String)(round(100 * (value / 1000)) / 100)
                txtOunce.text = (String)(round(100 * (value / 28.35)) / 100)
                txtPounds.text = (String)(round(100 * (value / 454)) / 100)
                txtStone.text = (String)(round(100 * (value / 6350)) / 100)
    }
    
    @IBAction func OunceConvert(_ sender: Any) {
        let textInputValue = txtOunce.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
                txtKg.text = (String)(round(100 * (value / 35.274)) / 100)
                txtgrams.text = (String)(round(100 * (value / 28.25)) / 100)
                txtPounds.text = (String)(round(100 * (value * 16)) / 100)
                txtStone.text = (String)(round(100 * (value / 224)) / 100)
    }
    @IBAction func PoundConvert(_ sender: Any) {
        let textInputValue = txtPounds.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
                txtKg.text = (String)(round(100 * (value / 2.205)) / 100)
                txtgrams.text = (String)(round(100 * (value / 454)) / 100)
                txtOunce.text = (String)(round(100 * (value * 16)) / 100)
                txtStone.text = (String)(round(100 * (value / 14)) / 100)
    }
    @IBAction func StoneConvert(_ sender: Any) {
        let textInputValue = txtStone.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
                txtKg.text = (String)(round(100 * (value * 6.35)) / 100)
                txtgrams.text = (String)(round(100 * (value * 6350)) / 100)
                txtOunce.text = (String)(round(100 * (value * 224)) / 100)
                txtPounds.text = (String)(round(100 * (value * 14)) / 100)
    }
    

    @IBAction func saveWeight(_ sender: Any) {
        let weightString = "\(txtKg.text ?? "0.0") Kilograms | \(txtgrams.text ?? "0.0") Grams | \(txtOunce.text ?? "0.0") Ounce | \(txtPounds.text ?? "0.0") Pound | \(txtStone.text ?? "0.0") Stone"

        historyArray.append(weightString)
        UserDefaults.standard.set(historyArray,forKey: "WeightHistory")
        print(historyArray)
                
    }
    
    @IBAction func WeightHistory(_ sender: Any) {
        
    }
}

class TempViewController: UIViewController {

    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var txtfahrenheit: UITextField!
    
    @IBOutlet weak var txtKelvin: UITextField!
    var historyArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "TempHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()         // Do any additional setup after loading the view.
    }

    
    @IBAction func celsiusConvert(_ sender: Any) {
        let textInputValue = txtCelsius.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtfahrenheit.text = (String)(round(1000 * ((value * 9/5) + 32)) / 1000)
            txtKelvin.text = (String)(round(1000 * (value + 273.15)) / 1000)
            
    }
    @IBAction func fahrehenheitConvert(_ sender: Any) {
        let textInputValue = txtfahrenheit.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtCelsius.text = (String)(round(1000 * ((value - 32) * 5/9)) / 1000)
        txtKelvin.text = (String)(round(1000 * (((value - 32) * 5/9) + 273.15)) / 1000)
        
    }
    
    @IBAction func KelvinConvert(_ sender: Any) {
        let textInputValue = txtKelvin.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtCelsius.text = (String)(round(1000 * (value - 273.15)) / 1000)
        txtfahrenheit.text = (String)(round(1000 * (((value - 273.15) * 9/5) + 32)) / 1000)
            
    }
    
    @IBAction func saveTemp(_ sender: Any) {
        let tempString = "\(txtCelsius.text ?? "0.0") Celsius | \(txtfahrenheit.text ?? "0.0") fahrenheit | \(txtKelvin.text ?? "0.0") Kelvin "

        historyArray.append(tempString)
        UserDefaults.standard.set(historyArray,forKey: "TempHistory")
        print(historyArray)
    }
    @IBAction func TempHistory(_ sender: Any) {
    }
}

class LengthViewController: UIViewController {

    @IBOutlet weak var txtmetre: UITextField!
    @IBOutlet weak var txtKM: UITextField!
    @IBOutlet weak var txtMile: UITextField!
    @IBOutlet weak var txtCM: UITextField!
    @IBOutlet weak var txtMM: UITextField!
    @IBOutlet weak var txtYard: UITextField!
    @IBOutlet weak var txtInch: UITextField!
    var historyArray: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "LengthHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()     }
    @IBAction func metreConvert(_ sender: Any) {
        let textInputValue = txtmetre.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtKM.text = (String)(round(100 * (value / 1000)) / 100)
            txtMile.text = (String)(round(100 * (value / 1609)) / 100)
            txtCM.text = (String)(round(100 * (value * 100)) / 100)
            txtMM.text = (String)(round(100 * (value * 1000)) / 100)
            txtYard.text = (String)(round(100 * (value * 1.094)) / 100)
            txtInch.text = (String)(round(100 * (value * 39.37)) / 100)
    }
    @IBAction func kmConvert(_ sender: Any) {
        let textInputValue = txtKM.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtmetre.text = (String)(round(100 * (value * 1000)) / 100)
            txtMile.text = (String)(round(100 * (value / 1.609)) / 100)
            txtCM.text = (String)(round(100 * (value * 100000)) / 100)
            txtMM.text = (String)(round(100 * (value * 1000000)) / 100)
            txtYard.text = (String)(round(100 * (value * 1094)) / 100)
            txtInch.text = (String)(round(100 * (value * 39370)) / 100)
    }
    @IBAction func mileConvert(_ sender: Any) {
        let textInputValue = txtMile.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtKM.text = (String)(round(100 * (value * 1.609)) / 100)
            txtmetre.text = (String)(round(100 * (value * 1609)) / 100)
            txtCM.text = (String)(round(100 * (value * 160934)) / 100)
            txtMM.text = (String)(round(100 * (value * 1609340)) / 100)
            txtYard.text = (String)(round(100 * (value * 1760)) / 100)
            txtInch.text = (String)(round(100 * (value * 63360)) / 100)
    }
    
    @IBAction func cmConvert(_ sender: Any) {
        let textInputValue = txtCM.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtKM.text = (String)(round(100 * (value / 100000)) / 100)
            txtMile.text = (String)(round(100 * (value / 160934)) / 100)
            txtmetre.text = (String)(round(100 * (value / 100)) / 100)
            txtMM.text = (String)(round(100 * (value * 10)) / 100)
            txtYard.text = (String)(round(100 * (value / 91.44)) / 100)
            txtInch.text = (String)(round(100 * (value / 2.54)) / 100)
    }
    @IBAction func mmConvert(_ sender: Any) {
        let textInputValue = txtMM.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtKM.text = (String)(round(100 * (value / 1000000)) / 100)
        txtMile.text = (String)(round(100 * (value / 1609340)) / 100)
        txtmetre.text = (String)(round(100 * (value / 1000)) / 100)
        txtCM.text = (String)(round(100 * (value / 10)) / 100)
        txtYard.text = (String)(round(100 * (value / 914)) / 100)
        txtInch.text = (String)(round(100 * (value / 25.4)) / 100)
    }
    @IBAction func yardConvert(_ sender: Any) {
        let textInputValue = txtYard.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtKM.text = (String)(round(100 * (value / 1094)) / 100)
            txtMile.text = (String)(round(100 * (value / 1760)) / 100)
            txtCM.text = (String)(round(100 * (value * 91.44)) / 100)
            txtMM.text = (String)(round(100 * (value * 914.4)) / 100)
            txtmetre.text = (String)(round(100 * (value / 1.094)) / 100)
            txtInch.text = (String)(round(100 * (value * 36)) / 100)
    }
    @IBAction func inchConvert(_ sender: Any) {
        let textInputValue = txtInch.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtKM.text = (String)(round(100 * (value / 39370)) / 100)
            txtMile.text = (String)(round(100 * (value / 63360)) / 100)
            txtCM.text = (String)(round(100 * (value * 2.54)) / 100)
            txtMM.text = (String)(round(100 * (value * 25.4)) / 100)
            txtYard.text = (String)(round(100 * (value / 36)) / 100)
            txtmetre.text = (String)(round(100 * (value / 39.37)) / 100)
    }
    
    @IBAction func SaveLength(_ sender: Any) {
        let lengthString = "\(txtKM.text ?? "0.0") Kilometre | \(txtMile.text ?? "0.0") Mile | \(txtCM.text ?? "0.0") Centimetre | \(txtMM.text ?? "0.0") Milimetre | \(txtYard.text ?? "0.0") Yard  | \(txtInch.text ?? "0.0") Inch  | \(txtmetre.text ?? "0.0") Metre "

        historyArray.append(lengthString)
        UserDefaults.standard.set(historyArray,forKey: "LengthHistory")
        print(historyArray)
    }
    @IBAction func HistoryLength(_ sender: Any) {
    }
    
}

class SpeedViewController: UIViewController {

    @IBOutlet weak var txtmsec: UITextField!
    @IBOutlet weak var txtkmhr: UITextField!
    @IBOutlet weak var txtmilehr: UITextField!
    @IBOutlet weak var txtKnot: UITextField!
    var historyArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "SpeedHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()     }

    @IBAction func msecConvert(_ sender: Any) {
        let textInputValue = txtmsec.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtkmhr.text = (String)(round(100 * (value * 3.6)) / 100)
        txtmilehr.text = (String)(round(100 * (value * 2.273)) / 100)
        txtKnot.text = (String)(round(100 * (value * 1.944)) / 100)
            
    }
    @IBAction func kmhrConvert(_ sender: Any) {
        let textInputValue = txtkmhr.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtmsec.text = (String)(round(100 * (value / 3.6)) / 100)
        txtmilehr.text = (String)(round(100 * (value / 1.609)) / 100)
        txtKnot.text = (String)(round(100 * (value / 1.852)) / 100)
    }
    
    @IBAction func milehrConvert(_ sender: Any) {
        let textInputValue = txtmilehr.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtmsec.text = (String)(round(100 * (value / 2.237)) / 100)
        txtkmhr.text = (String)(round(100 * (value * 1.609)) / 100)
        txtKnot.text = (String)(round(100 * (value / 1.151)) / 100)
    }
    @IBAction func knotConvert(_ sender: Any) {
        let textInputValue = txtKnot.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
        txtmsec.text = (String)(round(100 * (value / 1.944)) / 100)
        txtkmhr.text = (String)(round(100 * (value * 1.1852)) / 100)
        txtmilehr.text = (String)(round(100 * (value * 1.151)) / 100)
    }
    
    @IBAction func SaveSpeed(_ sender: Any) {
        let speedString = "\(txtmsec.text ?? "0.0") meters per second | \(txtkmhr.text ?? "0.0") kilometres per hour | \(txtmilehr.text ?? "0.0") Miles per hour | \(txtKnot.text ?? "0.0") Knots "

        historyArray.append(speedString)
        UserDefaults.standard.set(historyArray,forKey: "SpeedHistory")
        print(historyArray)
    }
    @IBAction func HistorySpeed(_ sender: Any) {
    }
}

class LVolumeViewController: UIViewController {

    @IBOutlet weak var txtGallon: UITextField!
    @IBOutlet weak var txtLitre: UITextField!
    @IBOutlet weak var txtPint: UITextField!
    @IBOutlet weak var txtOunce: UITextField!
    @IBOutlet weak var txtml: UITextField!
    var historyArray: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "LVolumeHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()     }
    @IBAction func gallonConvert(_ sender: Any) {
        let textInputValue = txtGallon.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtLitre.text = (String)(round(100 * (value * 3.785)) / 100)
            txtPint.text = (String)(round(100 * (value * 8)) / 100)
            txtOunce.text = (String)(round(100 * (value * 128)) / 100)
            txtml.text = (String)(round(100 * (value * 3785)) / 100)
            
    }
    @IBAction func litreConvert(_ sender: Any) {
        let textInputValue = txtLitre.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtGallon.text = (String)(round(100 * (value / 3.785)) / 100)
            txtPint.text = (String)(round(100 * (value * 2.113)) / 100)
            txtOunce.text = (String)(round(100 * (value * 33.814)) / 100)
            txtml.text = (String)(round(100 * (value * 1000)) / 100)
            
    }
    @IBAction func pintConvert(_ sender: Any) {
        let textInputValue = txtPint.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtGallon.text = (String)(round(100 * (value / 8)) / 100)
            txtLitre.text = (String)(round(100 * (value / 2.113)) / 100)
            txtOunce.text = (String)(round(100 * (value * 16)) / 100)
            txtml.text = (String)(round(100 * (value * 473)) / 100)
            
    }
    @IBAction func ounceConvert(_ sender: Any) {
        let textInputValue = txtOunce.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtGallon.text = (String)(round(100 * (value / 128)) / 100)
            txtLitre.text = (String)(round(100 * (value / 33.184)) / 100)
            txtPint.text = (String)(round(100 * (value / 16)) / 100)
            txtml.text = (String)(round(100 * (value * 29.574)) / 100)
    }
    @IBAction func mlConvert(_ sender: Any) {
        let textInputValue = txtml.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtGallon.text = (String)(round(100 * (value / 3785)) / 100)
            txtLitre.text = (String)(round(100 * (value / 1000)) / 100)
            txtPint.text = (String)(round(100 * (value / 473)) / 100)
            txtOunce.text = (String)(round(100 * (value / 29.574)) / 100)
            
    }
    
    @IBAction func SaveLVolume(_ sender: Any) {
        let LVolumeString = "\(txtGallon.text ?? "0.0") Gallon | \(txtLitre.text ?? "0.0") Litre | \(txtPint.text ?? "0.0") Pint | \(txtOunce.text ?? "0.0") Ounce | \(txtml.text ?? "0.0") Mililitre "

        historyArray.append(LVolumeString)
        UserDefaults.standard.set(historyArray,forKey: "LVolumeHistory")
        print(historyArray)
    }
    
    @IBAction func HistoryLVolume(_ sender: Any) {
    }
}

class VolumeViewController: UIViewController {

    @IBOutlet weak var txtcmm: UITextField!
    @IBOutlet weak var txtccm: UITextField!
    @IBOutlet weak var txtcfeet: UITextField!
    var historyArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        historyArray = UserDefaults.standard.object(forKey: "VolumeHistory") as? [String] ?? [String]()
        self.hideKeyboardWhenTappedAround()
        
    }
    @IBAction func cmmConvert(_ sender: Any) {
        let textInputValue = txtcmm.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtccm.text = (String)(round(100 * (value * 1000000)) / 100)
            txtcfeet.text = (String)(round(100 * (value * 35.315)) / 100)
            
    }
    @IBAction func ccmConvert(_ sender: Any) {
        let textInputValue = txtccm.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtcmm.text = (String)(round(100 * (value / 1000000)) / 100)
            txtcfeet.text = (String)(round(100 * (value / 28317)) / 100)
    }
    @IBAction func cfeetConvert(_ sender: Any) {
        let textInputValue = txtcfeet.text ?? "0"
        let value = Double(textInputValue) ?? 0
                
            txtcmm.text = (String)(round(100 * (value / 35.315)) / 100)
            txtccm.text = (String)(round(100 * (value * 28317)) / 100)
            
    }
    
    @IBAction func SaveVolume(_ sender: Any) {
        let VolumeString = "\(txtcmm.text ?? "0.0") Cubnic Metre | \(txtccm.text ?? "0.0") Cubic Centimetre | \(txtcfeet.text ?? "0.0") Cubic Feet"

        historyArray.append(VolumeString)
        UserDefaults.standard.set(historyArray,forKey: "VolumeHistory")
        print(historyArray)
    }
    
    @IBAction func HistoryVolume(_ sender: Any) {
    }
}

class HistoryViewController: UITableViewController {
    var historyArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewControllers = self.navigationController?.viewControllers {
                    let previousViewControllers = viewControllers[viewControllers.count - 2]
            print(previousViewControllers)
                    
                    if previousViewControllers is WeightViewController {
                        historyArray = UserDefaults.standard.object(forKey: "WeightHistory") as? [String] ?? [String]()
                        print("IF")
                        print(historyArray)
                    }else if previousViewControllers is TempViewController {
                        historyArray = UserDefaults.standard.object(forKey: "TempHistory") as? [String] ?? [String]()
                    }else if previousViewControllers is LengthViewController {
                        historyArray = UserDefaults.standard.object(forKey: "LengthHistory") as? [String] ?? [String]()
                    }else if previousViewControllers is SpeedViewController {
                        historyArray = UserDefaults.standard.object(forKey: "SpeedHistory") as? [String] ?? [String]()
                    }else if previousViewControllers is LVolumeViewController {
                        historyArray = UserDefaults.standard.object(forKey: "LVolumeHistory") as? [String] ?? [String]()
                    }else if previousViewControllers is VolumeViewController {
                        historyArray = UserDefaults.standard.object(forKey: "VolumeHistory") as? [String] ?? [String]()
                    }
            
                }
        print(historyArray)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return historyArray.count
       }
       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell")!
           cell.textLabel?.textAlignment = .center
           cell.textLabel?.text = historyArray[indexPath.row]
           return cell
       }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let click = UITapGestureRecognizer(target: self, action: #selector(UIViewController.minimizeKeyboard))
        click.cancelsTouchesInView = false
        view.addGestureRecognizer(click)
    }
    
    @objc func minimizeKeyboard() {
        view.endEditing(true)
    }
}





