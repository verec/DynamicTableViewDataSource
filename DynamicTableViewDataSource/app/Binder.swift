//
//  Binder.swift
//  DynamicTableViewDataSource
//
//  Created by verec on 12/12/2015.
//  Copyright © 2015 Cantabilabs Ltd. All rights reserved.
//

import Swift
import Foundation

struct Binder {

    func bind() {
        var index = 0
        Storage.modelSource.filter = {
            (rawModel:[ModelObject]) in

            return rawModel.filter { (_) in
//                let m = $0
//                return ObjectIdentifier(m).hashValue & 1 == 0
//                ++index & 1 == 0
                ++index <= 25
            }
        }
    }

    static let binder = Binder()
}