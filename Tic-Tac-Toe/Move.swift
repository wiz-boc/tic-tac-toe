//
//  Move.swift
//  Tic-Tac-Toe
//
//  Created by wizz on 5/9/21.
//

import Foundation

struct Move {
    let player: Player
    let boardIndex: Int
    var indicator: String {
        return player == .human ? "tortoise" : "hare"
    }
}
