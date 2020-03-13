struct struct1{
	var length = 0
	var breadth = 0
}

class class1{
	var objStruct1 = struct1()
	func getArea() -> Int {
		return objStruct1.length * objStruct1.breadth
	}
}

class baseClass : class1 {
	var obj = class1()
}

//#################

class Vehicle {
	var currentSpeed = 0.0
	var description: String {
		return "Vehicle description with speed = \(currentSpeed)"
	}
	func makeNoise() {
		print("Droommmm.....")
	}
}

let someVehicle = Vehicle()
someVehicle.currentSpeed = 60.0
print(someVehicle.description)

class Bicycle: Vehicle {
	var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print(bicycle.description)
