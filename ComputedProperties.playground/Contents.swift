// Understanding Computed Properties

// Swift offers us two types of properties: Stored and Computed properties, of which below we are discussiong about the Computed properties.

// Definition: The computed properties are similar to the stored properties (variables only) with the getter(accessors) and setter(mutators) that can be modified. A computed property cannot be a constant ("'let' declarations cannot be computed properties"). A computed property can be READ ONLY but not WRITE ONLY, as the properties do not actually store values.

import UIKit

struct Time {
    
    var seconds: Double = 0
    
    init(seconds: Double) {
        self.seconds = seconds
    }
    
    // Computed property with Getters and setter
    var minutes: Double {
        set {
            self.seconds = (newValue * 60)
        }
        
        get {
            return (seconds/60)
        }
    }
    
    // Read only computed property
    var hours: Double {
        return (seconds / (60 * 60))
    }
}

var time = Time(seconds: 500)

time.minutes  // Prints 8.333..
time.minutes = 60

// time.hours = 1  // Cannot assign to property: 'hours' is a get-only property
time.hours // Prints the hour as 1

time.seconds = 800 // Sets new value of seconds to the seconds.
time.seconds // Prints 800


// Following is the example of the read only computed properties that we can use in the User enum for defining the user title and user icon.
enum User {
    case player
    case referee
    case manager
    
    var userDescription: String {
        switch self {
        case .manager: return "Manager"
        case .player: return "Player"
        case .referee: return "Referee"
            
        }
        
    }
    
    var userIconImage: String {
        switch  self {
        case .manager: return "🧑🏻‍💼"
        case .player: return "🏃🏻"
        case .referee: return "👮🏻‍♀️"
            
        }
    }
}

let manager: User = .manager
manager.userDescription
manager.userIconImage

let referee: User = .referee
referee.userIconImage
referee.userDescription

let player: User = .player
player.userIconImage
player.userDescription



