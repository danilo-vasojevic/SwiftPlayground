//
//  Manager.swift
//  SwiftPlayground
//
//  Created by Danilo Vasojevic on 15.7.21..
//

class Manager: Employee {
    var teamSize = 0
    
    // Computed property
    // When accessed, code evaluates
    var bonus:Int {
        return teamSize * 1000
    }
    
    init(named name:String, paid salary:Int, withTeamOf teamSize:Int) {
        super.init(named: name, paid: salary, doing: .itManager)
        self.teamSize = teamSize
    }
    
    override func introduceYourself() {
        super.introduceYourself()
        print("I also manage a team of \(teamSize) people")
        print("My yearly bonus is $\(bonus)")
    }
}
