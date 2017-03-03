//
//  ShowInfoController.swift
//  Practica_agenda
//
//  Created by Alfredo Fregoso Arreguin on 3/1/17.
//  Copyright © 2017 AppData. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ShowInfoController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var postdata = [String: Any]()
    var ref: FIRDatabaseReference?
    var dataBaseHandle: FIRDatabaseHandle?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //Configurar referencia firebase
        ref = FIRDatabase.database().reference()
        
        //Recuperar los datos
        dataBaseHandle = ref?.child("Usuario").observe(.childAdded, with: { (snapshot) in
            
            let dataDict = snapshot.value as! [String: Any]
            print(dataDict)
          
            
            
            
        })
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "PostCell")!
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
