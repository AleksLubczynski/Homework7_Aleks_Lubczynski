//
//  Item.swift
//  Homework7_Aleks_Lubczynski
//
//  Created by Aleks Lubczynski on 9/30/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
