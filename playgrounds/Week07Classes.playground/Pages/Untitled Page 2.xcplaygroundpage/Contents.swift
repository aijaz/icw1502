class ConferenceAttendee {
    let name: String
    let hometown: String
    
    init(name: String, hometown: String = "Chicago") {
        // Step 3: initialize all properties of this class
        self.name = name
        self.hometown = hometown
        
        // Step 4: Do any other setup now that all properties are initialized properly
    }
    
    func nameBadge() -> String {
        return "Hi. I'm \(name) from \(hometown)"
    }
}

let aijaz = ConferenceAttendee(name: "Aijaz", hometown: "Chicago")
aijaz.nameBadge()

let adel = ConferenceAttendee(name: "Adel")
adel.nameBadge()

class TutorialAttendee : ConferenceAttendee, CustomStringConvertible {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String = "Chicago") {
        // Step 1: initialize all properties of the subclass
        self.tutorial = tutorial
        // ... other property initializationa
        
        // Step 2: call init on the superclass
        super.init(name: name, hometown: hometown)
        
        // Step 5: Do any other setup now that all superclasses have done their setup
        
    }
    
    var description:String {
        return "My description"
    }
   
    override func nameBadge() -> String {
        return super.nameBadge() + " and I'm taking \(tutorial)"
    }
    
}

let ayesha = TutorialAttendee(name: "Ayesha", tutorial: "Swift", hometown: "Denver")
ayesha.nameBadge()

















struct s {
    let name: String
    let hometown: String

    init (name: String, hometown: String) {
        self.name = name
        self.hometown = hometown
    }
    
    init (name: String) {
        self.init(name: name, hometown: "Chicago")
    }
}