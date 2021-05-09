//
//  Alerts.swift
//  Tic-Tac-Toe
//
//  Created by wizz on 5/9/21.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"), message: Text("You are so smart. You beat your own AI"), buttonTitle: Text("Ye mon!!"))
    static let computerWin = AlertItem(title: Text("You Lost!"), message: Text("You programmed a super AI."), buttonTitle: Text("Ye mon!!"))
    static let draw = AlertItem(title: Text("Draw!"), message: Text("What a battle of wits we have here..."), buttonTitle: Text("Try again!!"))
}
