//
//  DetalsVC.swift
//  TestCoreData
//
//  Created by Mobark Alseif on 10/04/1443 AH.
//

import UIKit
import CoreData

class DetalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let context = PersistentStorage.shared.context
    var persons: [CDPerson]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        persons = PersistentStorage.shared.fetchManagedObject(managedObject: CDPerson.self)
    }
    
    @IBAction func edit(_ sender: UIBarButtonItem) {
        if tableView.isEditing {
            tableView.isEditing = false
        } else {
            tableView.isEditing = true
        }
    }
}








//
//func updateDatabase(isName: Bool) {
//    //
//    //        let entityUser = NSEntityDescription.entity(forEntityName: "User", in: context)
//    //        let newUser = NSManagedObject(entity: entityUser!, insertInto: context)
//    //
//    //        if isName {
//    //            newUser.setValue(userName.text, forKey: "name")
//    //        } else {
//    //            newUser.setValue(userPassword.text, forKey: "password")
//    //        }
//    //        PersistentStorage.shared.saveContext()
//}
//func getUserInfo() {
//
//    //        let requestEntityUser = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
//    //
//    //        do {
//    //            let result = try context.fetch(requestEntityUser)
//    //            for data in result as! [NSManagedObject] {
//    //                guard let name = data.value(forKey: "name") as? String  else { return }
//    //                userName.text = name
//    //                guard let password = data.value(forKey: "password") as? String  else { return }
//    //                userPassword.text = password
//    //            }
//    //
//    //        } catch {
//    //
//    //            print("Failed")
//    //        }
//}

//
//func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
//    if sourceIndexPath == destinationIndexPath {
//        return
//    } else {
//        guard let movedItem = users?[sourceIndexPath.row] else { return }
//
//        guard let destination = users?[destinationIndexPath.row] else { return }
//
//        users?.remove(at: sourceIndexPath.row)
//        users?.insert(movedItem, at: destinationIndexPath.row)
////            guard let users = users else {return}
////            context.delete()
////            context.object(with: users[])
//        let entityUser = NSEntityDescription.entity(forEntityName: "User", in: context)
//        let user = NSManagedObject(entity: entityUser!, insertInto: context)
//
//        newUser.setValue(userName, forKey: "name")
//        newUser.setValue(password, forKey: "password")
//        PersistentStorage.shared.saveContext()
//
//    }
//}
