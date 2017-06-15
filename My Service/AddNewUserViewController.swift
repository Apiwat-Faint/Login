//
//  AddNewUserViewController.swift
//  My Service
//
//  Created by apiwat wattanasura on 6/15/17.
//  Copyright © 2017 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController:

UIViewController {
    
    var nameString: String? = nil
    var userString: String? = nil
    var PasswordString: String? = nil
    
    //Check Space
    
    
    
    @IBOutlet weak var nameTextFieid: UITextField!
    
    @IBOutlet weak var userTextFieid: UITextField!
    
    @IBOutlet weak var PasswordTextFieid: UITextField!
    
    
    
   
    @IBAction func saveButton(_ sender: Any) {
        
        nameString = nameTextFieid.text
        userString = userTextFieid.text
        PasswordString = PasswordTextFieid.text
        
        let intName = nameString?.characters.count
        let intUer = userString?.characters.count
        let intPassword = PasswordString?.characters.count
        
        if (intName == 0) || (intUer == 0) || (intPassword == 0) {
            
            print("Have Space")
        }else{
            print("No Space")
        }
        
    }//
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("This is AddNewUser")

        // Do any additional setup after loading the view.
    } // Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceive
    
    
   
} //Main Class
