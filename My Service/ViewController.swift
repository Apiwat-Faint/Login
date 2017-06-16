//
//  ViewController.swift
//  My Service
//
//  Created by apiwat wattanasura on 6/15/17.
//  Copyright © 2017 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    var myString = ""
    var strUser: String? = nil
    var strPassword: String? = nil
    
    //Check Space
    
    
    
    @IBOutlet weak var userTextFieid: UITextField!
    
    @IBOutlet weak var passwordTextFieid: UITextField!
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextFieid
        strUser = userTextFieid.text
        strPassword = passwordTextFieid.text
        
        if strUser?.characters.count == 0 || strPassword?.characters.count == 0 {
            alertLabel.alpha = 1
        }else{
            
            alertLabel.alpha = 0
            
        }// if
        
    } //loginButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
//        //Process connected Http
//        let urlPHP = "http://androidthai.in.th"
//        //Change String to url String
//        let myURL = URL(string: urlPHP)
//        
//        let request = NSMutableURLRequest (url: myURL!)
//        let task = URLSession.shared.dataTask(with: request as URLRequest){
//            
//            
//            data, response, error in
//            if error != nil{
//                print("Error ==> ")
//            } else{
//                
//                if let unwrappedData = data {
//                    
//                    
//                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
//                    let strJSON = dataString as Any
//                    print("strJSON ==> \(strJSON)")
//                    
//                    
//                }
//            }// if1
//                }
//       task.resume()
        
        func readJSON(strURL: String) -> Void{
            
        } //readJSON
        
        
        
    } // Main Metthod

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

