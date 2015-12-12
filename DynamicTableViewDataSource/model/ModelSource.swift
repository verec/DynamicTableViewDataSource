//
//  ModelSource.swift
//  DynamicTableViewDataSource
//
//  Created by verec on 05/12/2015.
//  Copyright © 2015 Cantabilabs Ltd. All rights reserved.
//

import Foundation

class ModelSource {

    var model:[ModelObject] = []
    var cache:[ModelObject] = []

    typealias ModelFilter = ([ModelObject]) -> ([ModelObject])

    var filter:ModelFilter?

    var count:Int {
        return cache.count
    }

    subscript(index:Int) -> ModelObject {
        return cache[index]
    }

    func generateDeltas(filtered:[ModelObject]) {
    }

    func applyFilter() {
        if let result = self.filter?(model) {
            generateDeltas(result)
            cache = result
        } else {
            cache = model
        }
    }
    
    init() {
        for rank in 0 ..< 50 {
            model.append(SampleModel(rank: rank))
        }
        applyFilter()
    }
}