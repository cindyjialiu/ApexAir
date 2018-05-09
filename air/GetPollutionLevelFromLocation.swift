//
//  GetPollutionLevelFromLocation.swift
//  air
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation

func getConcen(lon: Double, lat: Double) -> Double {
    let x = getIndex(find: lon - Coordinates().gridOffsetX, arr: Coordinates().x)
    print("\(x)")
    let y = getIndex(find: lat - Coordinates().gridOffsetY, arr: Coordinates().y)
    print("\(y)")
    let index = getIndexOfConcen(findX: x, findY: y, rowWidth: 50)
    print("\(index)")
    let result = Concen().concen[index]
    print("\(result)")
    return result
}



