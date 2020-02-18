//
//  NoteItem.swift
//  Note
//
//  Created by Josselin on 18/02/2020.
//  Copyright © 2020 Josselin. All rights reserved.
//

import Foundation
import CoreData

public class NoteItem:NSManagedObject, Identifiable {
    @NSManaged public var id:UUID?
    @NSManaged public var title:String?
    @NSManaged public var content:String?
    @NSManaged public var create:Date?
    @NSManaged public var modify:Date?
}

extension NoteItem {
    static func getAllNoteItem() -> NSFetchRequest<NoteItem> {
        let request:NSFetchRequest<NoteItem> = NoteItem.fetchRequest() as!
            NSFetchRequest<NoteItem>
        
        let sortDescriptor = NSSortDescriptor(key: "modify", ascending: false)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
