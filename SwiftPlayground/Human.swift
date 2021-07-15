//
//  Human.swift
//  SwiftPlayground
//
//  Created by Danilo Vasojevic on 15.7.21..
//

class Human {
    var name:String // Need to init in designated initializer or inline
    var prefix:String = "" // Initialized inline
    var gender:String? // Doesn't need to be initialized
    var netWorth:Int! // Doesn't need to be initialized
    
    // Designated initializer
    // Use them to make sure all necessary fields are initialized properly
    init() {
        self.name = ""
    }
    
    init(_ name:String) {
        self.name = name
    }
    
    // Used to initialized other properties which do not need to be initialized
    // Relies on designated intializers when there are fields which require initialization
    convenience init(_ name:String, _ gender:String) {
        self.init() // self keyword is required for some reason ?!
        self.gender = gender
    }
    
    // This convenience initializer makes use of parametrized designated initializer
    convenience init(_ name:String, _ netWorth:Int) {
        self.init(name)
        self.netWorth = netWorth
    }
    
}
