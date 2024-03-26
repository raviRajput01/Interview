//
//  FirstViewController.swift
//  InterviewPrepration
//
//  Created by Ravi Kumar Singh on 19/03/24.
//

import UIKit

protocol CarFeature {
    func startEngine()
    func stopEngine()
    func applyBreak()
    func inCresseSpeed()
    func deCresseSpeed()
    func applyHandBreak()
    
}

class Car {
    
     func viewDidLoad() {
         self.viewDidLoad()
    }
    func startEngine() {
        print("Engine Started")
    }
    
    func stopEngine() {
        print("Engine Stopped")
    }
}

class FirstViewController: Car {

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint(singleton.shared.val)
        let singletonclassObj = singleton.shared
        
        singletonclassObj.val = 50
        debugPrint(singleton.shared.val)
        // Do any additional setup after loading the view.
        debugPrint(ExSingleton.shared.state)
        var structSingletonObj = ExSingleton.shared
        
        structSingletonObj.state = 20
        debugPrint(ExSingleton.shared.state)
        
        let speciferClassObj = SpecifierExample()
        
       
            print("Try to acces Public",speciferClassObj.aPublicVar)
        print("try to access Private getting error......'aPrivateVar' is inaccessible due to 'private' protection level,speciferClassObj.aPrivateVar")
        print("Try to access a FilePrivate",speciferClassObj.aFilePrivateVar)
        print("Try to access a Open", speciferClassObj.aOpenVar)
        print("Try to access a Internal",speciferClassObj.aInternalVar)
        
        let obj = Car()
        print(obj.startEngine())
        addTwoNumber(10, 20)
        
    }
    
    var addTwoNumber: (Int, Int) -> Int = {
        return $0 + $1
    }
    
    @IBAction func TapButton(_ sender: UIButton) {
        
        print("Button Clicked")
    }

}

final class singleton {
    static let shared = singleton()
    var val: Int = 5
    init() {}
}

struct ExSingleton {
    static let shared = ExSingleton()
    var state: Int = 10
    
    private init() {}
}

///Access Specifier example

class SpecifierExample {
    
   public var       aPublicVar = 10
   private var      aPrivateVar = 20
   fileprivate var  aFilePrivateVar = 30
   open var         aOpenVar = 40
   internal var     aInternalVar = 50
    
    var some = 60
    
    func someThing() {
        print("Print something")
    }
}

class tryAcessClass {
    
    let speciferClassObj = SpecifierExample()
    
    func printVale() {
        debugPrint("Try to acces Public",speciferClassObj.aPublicVar)
        debugPrint("try to access Private getting error......'aPrivateVar' is inaccessible due to 'private' protection level,speciferClassObj.aPrivateVar")
        debugPrint("Try to access a FilePrivate",speciferClassObj.aFilePrivateVar)
        debugPrint("Try to access a Open", speciferClassObj.aOpenVar)
        debugPrint("Try to access a Internal",speciferClassObj.aInternalVar)
    }
}
