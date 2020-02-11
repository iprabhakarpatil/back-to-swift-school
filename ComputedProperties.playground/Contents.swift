// Understanding Computed Properties

// Swift offers us two types of properties: Stored and Computed properties, of which below we are discussiong about the Computed properties.

// Definition: The computed properties are similar to the stored properties (variables only) with the getter(accessors) and setter(mutators) that can be modified. A computed property cannot be a constant ("'let' declarations cannot be computed properties"). A computed property can be READ ONLY but not WRITE ONLY, as the properties do not actually store values.


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

