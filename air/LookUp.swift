//
//  LookUp.swift
//  air
//
//  Created by Jia Liu on 03/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation
func getIndex(find: Double, arr: Array<Double>) -> Int {
    let index = arr.index(where: { $0 >= find })
    return index != nil ? index! : arr.count - 1
}
