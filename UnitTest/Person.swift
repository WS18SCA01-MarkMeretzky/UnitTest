//
//  Person.swift
//  UnitTest
//
//  Created by Mark Meretzky on 4/7/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import Foundation;

struct Person {
    var name: String;
    
    init?(name: String) {
        if name.isEmpty {
            return nil;
        }
        self.name = name;
    }
}
