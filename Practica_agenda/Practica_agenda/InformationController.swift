//
//  InformationController.swift
//  Practica_agenda
//
//  Created by Alfredo Fregoso Arreguin on 2/28/17.
//  Copyright © 2017 AppData. All rights reserved.
//

import UIKit
import FirebaseDatabase



class InformationController: UIViewController {
    

    

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    var ref: FIRDatabaseReference?
    //var postData = [String]()
    
    
    var nombre = ""
    var telefono = ""
    var domicilio = ""
    
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = FIRDatabase.database().reference()
        
      
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savePressed(_ sender: Any) {
    
        nombre = nameTextField.text!
        telefono = phoneTextField.text!
        domicilio = addressTextField.text!
        
        let post: [String:Any] = [
            
            "nombre": nombre,
            "telefono":telefono,
            "domicilio":domicilio
            
            
        ]
       ref?.child("Usuario").childByAutoId().setValue(post)
        
        nameTextField.text = ""
        phoneTextField.text = ""
        addressTextField.text = ""
       // ref?.child("Usuario").child("Telefono").setValue(phoneTextField.text)
       // ref?.child("Usuario").child("Direccion").setValue(addressTextField.text)*/
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
     //   if segue.identifier == "nextView"{
     //       let controller = segue.destination as! ShowInfoController
           // let indexPath = sender as! IndexPath
            
      //  }
   // }
    
  //  override func performSegue(withIdentifier identifier:"nextView", sender: Any?) {
     //   if segu
   // }
    

}
