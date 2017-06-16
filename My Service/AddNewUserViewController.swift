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
    
    
    @IBOutlet weak var AlertLabel: UILabel!
    
   
    @IBAction func saveButton(_ sender: Any) {
        
        nameString = nameTextFieid.text
        userString = userTextFieid.text
        PasswordString = PasswordTextFieid.text
        
        let intName = nameString?.characters.count
        let intUer = userString?.characters.count
        let intPassword = PasswordString?.characters.count
        
        if (intName == 0) || (intUer == 0) || (intPassword == 0) {
            
            print("Have Space")
            AlertLabel.alpha = 1
        }else{
            print("No Space")
            AlertLabel.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/addUserFaint.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&Password=" + PasswordString! + ""
            print("strMyURL ==> \(strMyURL)")
            uploadValueToServer(strURL: strMyURL)
            
        }
        
    }//
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("This is AddNewUser")

      
    
    } // Main Method
    
    
    func uploadValueToServer(strURL: String) -> Void {
        
        //Process connected Http
        let urlPHP = strURL
        //Change String to url String
        let myURL = URL(string: urlPHP)
        
        let request = NSMutableURLRequest (url: myURL!)
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            
            
            data, response, error in
            if error != nil{
                print("Error ==>")
            } else{
                
                if let unwrappedData = data {
                    
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let strJSON = dataString as Any
                    print("strJSON ==> \(strJSON)")
                    
                    
                }
            }// if1
            
            
            
        }
        
        
        
        task.resume()
        performSegue(withIdentifier: "BackHome", sender: self)

        
    }// uploadValue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goHome"{
            
            if let desination = segue.destination as? ViewController {
                desination.myString = (sender as? String)!
            }
            
        } //if
        
    }// prepare

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceive
    
    
   
} //Main Class
