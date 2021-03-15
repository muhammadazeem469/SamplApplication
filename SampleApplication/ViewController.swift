//
//  ViewController.swift
//  SampleApplication
//
//  Created by Administrator on 15/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbllogin: UILabel!

    @IBOutlet weak var txtusername: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnsubmit(_ sender: Any) {
        
        print("Button Presed")
        
        lbllogin.text = "Button Pressed"
        
        let vc = UIStoryboard.init(name: "Main" , bundle : Bundle.main).instantiateViewController(withIdentifier: "RegisterViewControllerID") as? RegisterViewController
        
        vc?.flagvariable = "Transfered Successfully"
        self.navigationController?.pushViewController(vc!,animated: true)
        
    }
}

