//
//  game.swift
//  apple pie
//
//  Created by Hari Patel on 2/8/22.
//

import Foundation

struct game {
    var word: String
    var incorrectmovesremaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedword = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedword += "\(letter)"
            } else {
                guessedword += "_"
            }
    }
        return guessedword
    }
    
    
    mutating func playerGuessed(Letter : Character) {
        guessedLetters.append(Letter)
        if !word.contains(Letter) {
            incorrectmovesremaining -= 1
        }
    }
}
