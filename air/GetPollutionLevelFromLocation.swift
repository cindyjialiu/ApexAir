//
//  GetPollutionLevelFromLocation.swift
//  air
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation

func getConcern(lon: Double, lat: Double) -> Double {
    let x = getIndex(find: lon, arr: Coordinates().x)
    let y = getIndex(find: lat, arr: Coordinates().y)
    let index = getIndexOfConcern(findX: x, findY: y, rowWidth: 50)
    return Concern().concern[index]
}



