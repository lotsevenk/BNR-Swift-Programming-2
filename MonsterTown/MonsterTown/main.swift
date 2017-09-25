//
//  main.swift
//  MonsterTown
//
//  Created by AmeriHealth Caritas Employee on 8/27/17.
//  Copyright © 2017 Tin Pan Tech. All rights reserved.
//

import Foundation

var myTown = Town(population: 1, stoplights: 6)
var myTownSize = myTown?.townSize
print(myTownSize)
myTown?.printDescription()
myTown?.changePopulation(by: 10500)
myTownSize = myTown?.townSize
print(myTownSize)
myTown?.changePopulation(by: 1_000_500)
myTownSize = myTown?.townSize
print(myTownSize)
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
