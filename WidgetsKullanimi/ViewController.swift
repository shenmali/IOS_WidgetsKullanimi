//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by MaSheN on 7.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelSlider.text = String(Int(slider.value))
        indicator.isHidden = true
    }


    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    @IBAction func buttonResim1(_ sender: Any) {
        imageView.image = UIImage(named: "resim1")
    }
    
    
    @IBAction func buttonResim2(_ sender: Any) {
        imageView.image = UIImage(named: "resim2")
    }
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch ON")
        }else {
            print("Switch OFF")
        }
    }
    @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
        let secilenIndex = sender.selectedSegmentIndex
        print(" SECIM : \(sender.titleForSegment(at: secilenIndex)!)")
    }
    
    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
        
    }
    
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch durum : \(mSwitch.isOn)")
        print("Segmented En Son Secim: \(segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!)")
        print("Slider en son deger: \(Int(slider.value))")
        print("Stepper en son deger: \(Int(stepper.value))")
    }
    
    
    
    
    
}

