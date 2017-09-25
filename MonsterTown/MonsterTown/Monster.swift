//
//  Monster.swift
//  MonsterTown
//
//  Created by AmeriHealth Caritas Employee on 8/27/17.
//  Copyright © 2017 Tin Pan Tech. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var spookyNoise: String {
        return "Grr..."
    }
    var town: Town?
    var name: String
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    required init?(town: Town?, monsterName: String) {
        guard monsterName.characters.count > 0 else {
            return nil
        }
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}

