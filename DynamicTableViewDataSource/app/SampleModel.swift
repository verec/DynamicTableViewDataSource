//
//  SampleModel.swift
//  DynamicTableViewDataSource
//
//  Created by verec on 12/12/2015.
//  Copyright © 2015 Cantabilabs Ltd. All rights reserved.
//

import Foundation

class SampleModel : ModelObject {
    var expanded:Bool = false
    var rank:Int = -1

    init(rank:Int) {
        self.rank = rank
    }
}