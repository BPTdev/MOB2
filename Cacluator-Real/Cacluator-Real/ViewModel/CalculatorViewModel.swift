//
//  CalculatorViewModel.swift
//  Cacluator-Real
//
//  Created by Benoît Pierrehumbert on 22.03.2024.
//

import SwiftUI
import Combine

class CalculatorViewModel: ObservableObject {
    let buttonRows: [[(String, Color, CGFloat, CGFloat)]] = [
        [("AC", .gray, buttonWidth, buttonWidth), ("+/-", .gray, buttonWidth, buttonWidth), ("%", .gray, buttonWidth, buttonWidth), ("/", .orange, buttonWidth, buttonWidth)],
        [("7", .secondary, buttonWidth, buttonWidth), ("8", .secondary, buttonWidth, buttonWidth), ("9", .secondary, buttonWidth, buttonWidth), ("X", .orange, buttonWidth, buttonWidth)],
        [("4", .secondary, buttonWidth, buttonWidth), ("5", .secondary, buttonWidth, buttonWidth), ("6", .secondary, buttonWidth, buttonWidth), ("-", .orange, buttonWidth, buttonWidth)],
        [("1", .secondary, buttonWidth, buttonWidth), ("2", .secondary, buttonWidth, buttonWidth), ("3", .secondary, buttonWidth, buttonWidth), ("+", .orange, buttonWidth, buttonWidth)],
        [("BPT\nDEV",.black, buttonWidth, buttonWidth),("0", .secondary, buttonWidth, buttonWidth), (".", .secondary, buttonWidth, buttonWidth), ("=", .orange, buttonWidth, buttonWidth)]
    ]
    
    
}
