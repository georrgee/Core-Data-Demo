//
//  ViewController.swift
//  Core Data Demo
//
//  Created by George Garcia on 6/26/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext // like a manager 
        
        // save some data
        
//        //creating a new user
//        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
//        
//        //setting stuff for userr
//        newUser.setValue("tommmy", forKey: "username")
//        newUser.setValue("password", forKey: "password")
//        newUser.setValue(5, forKey: "age")
//        
//        do{
//            
//            try context.save()
//            print("Username saved!")
//            
//        } catch {
//            print("There was an error")
//            
//        }
//        
        //restore date from core data
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        
        //request.predicate = NSPredicate(format: "username < %@", "ralphie")
        
        
        do {
            
            let results = try context.fetch(request) // try and fetch everyting within the Entity: "Users"
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    if let username = result.value(forKey: "username") as? String {
                        
//                        context.delete(result)
//                        
//                        do {
//                            
//                            try context.save()
//                            
//                            
//                        } catch {
//                            
//                            print("Delete failed")
//                            
//                        }
                        
                        
//                        result.setValue("Dooley", forKey: "username")
//                        
//                        //save it
//                        
//                        do{
//                            
//                            try context.save()
//                            
//                            
//                        } catch {
//                            
//                            print("rename failed")
//                        }
                        
                        print(username)
                        
                    }
                    
                }
                
            } else {
                print("No results")
            }
            
        } catch {
            print("Couldn't fetch results")
        }
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

