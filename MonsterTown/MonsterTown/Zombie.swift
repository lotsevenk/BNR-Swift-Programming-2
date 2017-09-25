//
//  Zombie.swift
//  MonsterTown
//
//  Created by AmeriHealth Caritas Employee on 8/27/17.
//  Copyright © 2017 Tin Pan Tech. All rights reserved.
//

import Foundation
class Zombie: Monster {
    override class var spookyNoise : String {
        return " Brains..."
    }
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town:town, monsterName: monsterName)
    }
    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    convenience required init?(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            if let tempTownPop = self.town?.population {
                if tempTownPop < 10 {
                    town?.changePopulation(by: -1 * tempTownPop)
                } else {
                    town?.changePopulation(by: -10)
                }
            }
        }
        super.terrorizeTown()
    }
}


