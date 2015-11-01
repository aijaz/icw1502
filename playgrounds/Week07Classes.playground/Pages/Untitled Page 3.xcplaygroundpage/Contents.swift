class ConferenceAttendee {
    let name: String
    let hometown: String?
    
    init(name: String, hometown: String? = nil) {
        // Step 3: initialize all properties of this class
        self.name = name
        self.hometown = hometown
        
        // Step 4: Do any other setup now that all properties are initialized properly
    }
    
    func nameBadge() -> String {
        let greeting = "Hi. I'm \(name)"
        guard let validHometown = hometown else {
            return greeting + "."
        }
        return greeting + " from \(validHometown)."
        
//        if let validHometown = hometown {
//            return greeting + " from \(validHometown)"
//        }
//        else {
//            return greeting + "."
//        }
    }
}

let aijaz = ConferenceAttendee(name: "Aijaz", hometown: "Chicago")
aijaz.nameBadge()

let adel = ConferenceAttendee(name: "Adel")
adel.nameBadge()

class TutorialAttendee : ConferenceAttendee {
    let tutorial: String
    
    init(name: String, tutorial: String, hometown: String? = nil) {
        // Step 1: initialize all properties of the subclass
        self.tutorial = tutorial
        // ... other property initializationa
        
        // Step 2: call init on the superclass
        super.init(name: name, hometown: hometown)
        
        // Step 5: Do any other setup now that all superclasses have done their setup
        
    }
    
    override func nameBadge() -> String {
        return super.nameBadge() + " and I'm taking \(tutorial)"
    }
    
}

let ayesha = TutorialAttendee(name: "Ayesha", tutorial: "Swift", hometown: "Denver")
ayesha.nameBadge()

let maazin = TutorialAttendee(name: "Maazin", tutorial: "TvOS")
maazin.nameBadge()
















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