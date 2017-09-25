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
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
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


