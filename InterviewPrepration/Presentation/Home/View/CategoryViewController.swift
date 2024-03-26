//
//  CategoryViewController.swift
//  InterviewPrepration
//
//  Created by Ravi Kumar Singh on 20/03/24.
//

import UIKit

class CategoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let speciferClassObj = SpecifierExample()
        
       
            print("Try to acces Public",speciferClassObj.aPublicVar)
        print("try to access Private getting error......'aPrivateVar' is inaccessible due to 'private' protection level,speciferClassObj.aPrivateVar")
        //print("Try to access a FilePrivate",speciferClassObj.aFilePrivateVar)
        print("Try to access a Open", speciferClassObj.aOpenVar)
        print("Try to access a Internal",speciferClassObj.aInternalVar)    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
