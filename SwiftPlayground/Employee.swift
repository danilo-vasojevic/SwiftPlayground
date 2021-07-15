//
//  FirstClass.swift
//  SwiftPlayground
//
//  Created by Danilo Vasojevic on 15.7.21..
//

class Employee: Person {
    var salary = 0
    var role:Roles = .unemployed
    
    // All args constructor
    init(named name:String, paid pay:Int, doing role:Roles) {
        super.init(name)
        salary = pay
        self.role = role
    }
    
    override init() {
        super.init()
    }
    
    func introduceYourself() {
        print("====================================")
        print("I'm \(name)")
        switch role {
        case .artDirector: print("I work as Art Director") // Swift can assume I'm using Roles here, nice!
        case .meetingAttender: print("I work as Meeting Attender")
        case .itManager: print ("I work as IT Manager")
        default: print("I don't even work, maaaaaan!")
        }
    }
}
