//
//  EmojiLogic.swift
//  air
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation


//func getEmoji(value: Double) -> String {
//    if (value >= 17.0 && value <= 17.5) {
//        return "😀 Very Good"
//    }
//    else if (value >= 17.51 && value <= 18.0) {
//        return "😎 Good"
//    }
//    else if (value >= 18.1 && value <= 19.0) {
//        return "🙂 Moderate"
//    }
//    else if (value >= 19.1 && value <= 20.0) {
//        return "😷 Poor"
//    }
//    else {
//        return "🤮 Very Poor"
//    }
//}

func getEmoji(value: Double) -> String {
    let emojiArr = ["😀 Very Good", "😎 Good", "🙂 Moderate", "😷 Poor", "🤮 Very Poor"]
    let pollutionRange = [40.0, 49.0, 55.0, 61.0, 80.0]
    let index = getIndex(find: value, arr: pollutionRange)
    return emojiArr[index]

}
