import UIKit



// CREATING CUSTOM FUNCTIONS

func nameOfFunctionArgument1(argument1: String, argument2: Bool) -> String {
    // implementation
    return "Hello"
}


// DEFINING A FUNCTION WITH NO ARGUMENTS

func printTakeAWalk() {
    print("Take a walk!")
}


// USING THE FUNCTION

printTakeAWalk()


// DEFINING FUNCTIONS WITH A RETURN TYPE

func heyIOS() -> String {
    return "Heyyy, iOS!"
}


// CAPTURING A FUNCTION’S RETURN

let greeting = heyIOS()


// DEFINING A FUNCTION WITH 1 ARGUMENT

func heyGroup(group: String) -> String {
    return "Heyyy, \(group)!"
}


// USING IT

let greetIOS = heyGroup(group: "iOS")

print(heyGroup(group: "iOS"))


// DEFINING A FUNCTION WITH MANY ARGUMENTS
    
/*  the first argument name is implied by the function’s name, subsequent arguments have to have names like speaker: String
*/

func heyListenGroup(group: String, speaker: String, minutes: Int) -> String {
    return "Heyyy, \(group)! Come listen to \(speaker) give a talk for \(minutes) minutes."
}


// USING IT

let listenToOrta = heyListenGroup(group: "everyone", speaker: "Orta", minutes: 60)



//USING CONDITIONALS

func findFileNamed(name: String) -> Bool {
    return true
}

let doesFileExist = findFileNamed(name: "testfile")

if doesFileExist == true {
    // openFileNamed("testfile")
} else {
    //reportError("testfile not found")
}




var rainingOutside = false

if rainingOutside == true {
    // ...
} else {
    // ...
}


//is the same as:

if rainingOutside {
    //takeUmbrella()
} else {
    // ...
}


//in a function:

func test(a: Bool, b: Bool) -> Bool {
    return true
}

/*
if test(a: x, b: y) {
    // ...
}
*/


//chaining:

/*
    if sallyDressColor == "yellow" {
    wearSomethingGreen()
} else if sallyDressColor == "blue" {
    wearSomethingPurple()
} else if sallyDressColor == "red" {
    wearSomethingOrange()
} else if sallyDressColor == "green" {
    wearSomethingBlue()
} else ...

*/




// COLORS

// view.backgroundColor = UIColor.randomColor()



// ARRAYS AND LOOPS

let numbers = [1, 2, 3, 4, 5]
var squaredNumbers: [Int] = []

for number in numbers {
    let squaredNumber = number * number
    squaredNumbers.append(squaredNumber)
}

print(squaredNumbers)



// LOOPS AND FUNCTIONS

func numberOfFriendsAbove70(grades: [Int]) -> Int {
    var studentsAbove70 = 0
    
    for grade in grades {
        if grade >= 70 {
            studentsAbove70 += 1
        }
    }
    
    return studentsAbove70
}

let gradesFromExam = [80, 45, 79, 32, 84, 100, 53, 60]

print(numberOfFriendsAbove70(grades: gradesFromExam))




// FOR IN LOOPS

var toMakeTea = ["Boil Water", "Add tea bag to cup", "Wait ten minutes", "Add Milk", "Drink"]

for (index, step) in toMakeTea.enumerated() {
    print("\(index + 1). \(step)")
}


// CHECK IF AN ARRAY IS EMPTY

if toMakeTea.isEmpty {
    print("No tea yet :(")
} else {
    print("Ready to make tea! :)")
}

// is not empty:
    
    if !toMakeTea.isEmpty {
    print("Ready to make tea! :)")
} else {
    print("No tea yet :(")
}


// ADD ITEM TO AN ARRAY

toMakeTea.append("Enjoy!")

toMakeTea.insert("Add water to kettle", at: 0)


// CHANGE ITEMS IN AN ARRAY

toMakeTea[3] = "Wait 3-5 minutes"


// REMOVING ITEMS FROM AN ARRAY

toMakeTea.remove(at:6)



// OPTIONALS

var petName: String?
petName = "Scooter"

// can check if petName exists:
    
    if petName != nil {
    print("My friend's pet is \(petName)")
} else {
    print("My friend doesn't have a pet :(")
}

// optional binding, unwraps the Optional and makes it a constant:
    
    if let petName = petName {
    print("My friend's pet is \(petName)")
}


// FUNCTIONS WITH OPTIONALS

func produceFullName(withFirstName firstName: String, middleName: String?, lastName: String) -> String {
    var name = firstName
    if let middleName = middleName {
        name = "\(name) \(middleName)"
    }
    name = "\(name) \(lastName)"
    return name
}




// TUPLES
    
// if you need 2 or more pieces of data that describe an item. Ex: a point (x, y)

let p1: (Int, Int) = (1, 2)

let x: (Bool, String) = (false, "Image no longer exists at URL")


// USING TUPLES IN A FUNCTION

func downloadImage(atURL url: String) -> (Bool, String) {
    // TODO: Download image
    // if no error, return true
    // otherwise, get error string and return false
    let error = "Image no longer exists"
    return (false, error)
}


// ACCESSING ELEMENTS IN A TUPLE

let result = downloadImage(atURL: "http://example.com/image.png")
print("Success? \(result.0)")
print("Message: \(result.1)")


// NAMING ELEMENTS IN A TUPLE

var person = (name: "Jim", age: 30)
print("\(person.name)'s age is \(person.age)")


// CHANGING VALUES IN A TUPLE

person.age = 32




//DICTIONARIES

var favoriteWords = ["rigmarole": "a lengthy and complicated procedure"]

var numberWords = [1: "one"]


// ACCESSING A DICTIONARY

var definition = favoriteWords["rigmarole"]

// if you get a nil value back, it means it’s an Optional, check for optional like:

if let definition = definition {
    print("The definition of 'rigmarole' is '\(definition)'")
} else {
    print("'rigmarole' isn't a word!")
}


// ADDING NEW ITEM TO A DICTIONARY

favoriteWords["strategery"] = "strategy"


// LOOPING OVER A DICTIONARY

let airports = [
    "YYZ": "Toronto Pearson",
    "DUB": "Dublin",
    "JFK": "John F. Kennedy International Airport",
]

for (key, value) in airports {
    print("The abbreviation for \(value) is \(key)")
}

// or you can name your key, value:
    
    for (airportCode, airportName) in airports {
        print("The abbreviation for \(airportName) is \(airportCode)")
}


// DICTIONARIES WITH ARRAY VALUES

let toyStoryFilms = [
    "Toy Story",
    "Toy Story 2",
    "Buzz Lightyear of Star Command: The Adventure Begins",
    "Toy Story 3",
    "Toy Story 4"
]

let starWarsFilms = [
    "Star Wars",
    "The Empire Strikes Back",
    "Star Wars: Episode VI",
    "Star Wars: Episode I",
    "Star Wars: Episode II",
    "Star Wars: Episode III",
    "Star Wars: The Clone Wars",
    "Star Wars: The Force Awakens",
    "Star Wars: Episode VIII",
    "Star Wars: Episode IX"
]

var movies = [
    "Star Wars": starWarsFilms,
    "Toy Story": toyStoryFilms,
]


// LOOPING OVER A DICTIONARY WITH ARRAY VALUES

for (franchise, titles) in movies {
    print("There are \(titles.count) movies in the \(franchise) series")
}


// DICTIONARY METHODS

// adding an item:

let godfatherFilms = ["Film 1", "Film 2"]

movies["The Godfather"] = godfatherFilms
// or
movies.updateValue(godfatherFilms, forKey: "The Godfather")
















