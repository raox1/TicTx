//
//  Alerts.swift
//  TicTacToe
//
//  Created by Lalit Kumar on 17/01/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"),
                             message: Text("You are smart."),
                             buttonTitle: Text("hell Yeah!"))
    
    static let computerWin = AlertItem(title: Text("You Lost!"),
                             message: Text("Ai more smart."),
                             buttonTitle: Text("hell nah!"))
    
    static let draw = AlertItem(title: Text("Draw!"),
                             message: Text("Both Smart"),
                             buttonTitle: Text("Try Again!"))
}

