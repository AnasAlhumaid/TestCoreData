//
//  User+CoreDataClass.swift
//  TestCoreData
//
//  Created by Mobark Alseif on 10/04/1443 AH.
//

import Foundation
import CoreData

@objc(CDPerson)
public class CDPerson: NSManagedObject {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDPerson> {
        return NSFetchRequest<CDPerson>(entityName: "CDPerson")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    
    
    func create(person: Person) {

        let context = PersistentStorage.shared.context
        let cdPerson = CDPerson(context: context)
        cdPerson.name = person.name
        cdPerson.age  = person.age ?? 0
        
        PersistentStorage.shared.saveContext()

    }
}
