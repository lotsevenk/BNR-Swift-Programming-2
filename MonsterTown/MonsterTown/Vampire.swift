//
//  Vampire.swift
//  MonsterTown
//
//  Created by AmeriHealth Caritas Employee on 8/28/17.
//  Copyright © 2017 Tin Pan Tech. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var thralls : Array<Vampire> = []
    
    override func terrorizeTown() {
        town?.changePopulation(by: -1)
        thralls.append(Vampire(town:self.town, monsterName: "Thrall"))
        super.terrorizeTown()
    }
}

