//
//  EmojiLogic.swift
//  air
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation

func getEmoji(value: Double) -> String {
    let emojiArr = ["😀 Very Good", "😎 Good", "🙂 Moderate", "😷 Poor", "🤮 Very Poor"]
    let pollutionRange = [50.0, 55.0, 61.0, 70.0, 80.0]
    let index = getIndex(find: value, arr: pollutionRange)
    return emojiArr[index]

}
