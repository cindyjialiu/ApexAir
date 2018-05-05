//
//  EmojiLogic.swift
//  air
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import Foundation


func getEmoji(value: Double) -> String {
    if (value >= 17.0 && value <= 18.0) {
        return "😀"
    }
    else if (value >= 18.1 && value <= 19.0) {
        return "😎"
    }
    else if (value >= 19.1 && value <= 20.1) {
        return "😣"
    }
    else if (value >= 20.1 && value <= 21.0) {
        return "😓"
    }
    else if (value >= 21.1 && value <= 22.0) {
        return "😨"
    }
    else if (value >= 22.1 && value <= 23.0) {
        return "🤬"
    }
    else if (value >= 23.1 && value <= 24.0) {
        return "👹"
    }
    else{
        return "😈"
    }
}

