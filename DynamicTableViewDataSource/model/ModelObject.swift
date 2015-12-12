//
//  Model.swift
//  DynamicTableViewDataSource
//
//  Created by verec on 05/12/2015.
//  Copyright © 2015 Cantabilabs Ltd. All rights reserved.
//

import Foundation

protocol ModelObject {
}

//class Model : ModelObject {
////    var expanded:Bool = false
////    var rank:Int = -1
////
////    init(rank:Int) {
////        self.rank = rank
////    }
//}
//
class SampleModel : ModelObject {
    var expanded:Bool = false
    var rank:Int = -1

    init(rank:Int) {
        self.rank = rank
    }
}