//
//  LookUp.swift
//  air
//
//  Created by Jia Liu on 03/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation
func getIndex(find: Double, arr: Array<Double>) -> Int {
    return arr.index(where: { $0 >= find }) != nil ? arr.index(where: { $0 > find })! : arr.count - 1
}
