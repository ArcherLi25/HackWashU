import Swift


var cars = []


// if user has 500 points and wanna plant a tree.
var PersonalPoint = 0
var TreeStock = 0

//a list storing daily energy consumptions(difference btwn Expected&Actual)
var OverallEnergy: [Double] = []

//initialize the mph by the user's selection of cars
let mph = cars["User Selection"]

//Expected Emission in kilograms of C02, 31.5 is the average miles travelled per day.
let Expected = 31.5 / mph * 8.887
func calculateDaily(){
    let Actual = GoogleMapsAPI?
    //Assume a reward factor of 0.5
    var saved = Expected - Actual
    OverallEnergy.append(saved)
    let points = 0.5 * (Expected - Actual)
    PersonalPoint += points
}

func plantTree{
    if PersonalPoint < 500 {
        return
    }
    PersonalPoint -= 500;
    TreeStock +=1
}


//Grid of Trees Visualization: refreshes daily to visualize how much energy has been saved
//rationale: a mature tree absorbs 25kg CO2 a year, or 0.068 kg/day


//variable Trees records the CO2 pollution reduced in terms of how many trees are "active" in a day to asborb those CO2
//Grid showing the number of trees

var Trees = floor((Expected - Actual)/0.068)

//eg: Trees = 5, showing 5 trees on the UI. with "Your daily energy saving helped 5 trees breathe better!"
