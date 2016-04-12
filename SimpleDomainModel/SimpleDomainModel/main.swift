import Foundation

public func testMe() -> String {
    return "I have been tested!"
}

public class TestMe {
    public func Please() -> String {
        return "I have been tested!"
    }
}

////////////////////////////////////
// Money
//
public struct Money {
    
    public var amount: Int
    public var currency: String
  
    // Calls conversions depending on the received currency.
    public mutating func convert(to: String) -> Money {
        if (currency == "USD") {
            convertUSD(to)
        } else if (currency == "GBP") {
            convertGBP(to)
        } else if (currency == "EUR") {
            convertEUR(to)
        } else if (currency == "CAN") {
            convertCAN(to)
        }
        return self
    }
    
    // Converts from USD.
    private mutating func convertUSD(to: String) {
        var dubAmount = Double(amount)
        if (to == "CAN") {
            dubAmount = dubAmount * 1.25
            amount = Int(dubAmount)
            currency = "CAN"
        }
        if (to == "EUR") {
            dubAmount = dubAmount * 1.5
            amount = Int(dubAmount)
            currency = "EUR"
        }
        if (to == "GBP") {
            dubAmount = dubAmount * 0.5
            amount = Int(dubAmount)
            currency = "GBP"
        }
    }
    
    // Converts from CAN.
    private mutating func convertCAN(to: String) {
        var dubAmount = Double(amount)
        dubAmount = dubAmount / 0.8
        if (to == "USD") {
            amount = Int(dubAmount)
            currency = "USD"
        }
        if (to == "EUR") {
            dubAmount = dubAmount * 1.5
            amount = Int(dubAmount)
            currency = "EUR"
        }
        if (to == "GBP") {
            dubAmount = dubAmount * 0.5
            amount = Int(dubAmount)
            currency = "GBP"
        }
    }
    
    // Converts from EUR.
    private mutating func convertEUR(to: String) {
        var dubAmount = Double(amount)
        dubAmount = dubAmount / 0.66
        if (to == "CAN") {
            dubAmount = dubAmount * 1.25
            amount = Int(dubAmount)
            currency = "CAN"
        }
        if (to == "USD") {
            amount = Int(dubAmount)
            currency = "USD"
        }
        if (to == "GBP") {
            dubAmount = dubAmount * 0.5
            amount = Int(dubAmount)
            currency = "GBP"
        }
    }
    
    // Converts from GBP.
    private mutating func convertGBP(to: String) {
        var dubAmount = Double(amount)
        dubAmount = dubAmount * 2
        if (to == "CAN") {
            dubAmount = dubAmount * 1.25
            amount = Int(dubAmount)
            currency = "CAN"
        }
        if (to == "EUR") {
            dubAmount = dubAmount * 1.5
            amount = Int(dubAmount)
            currency = "EUR"
        }
        if (to == "USD") {
            amount = Int(dubAmount)
            currency = "USD"
        }
    }
  
    //
    public mutating func add(to: Money) -> Money {
        self.amount = self.amount + to.amount
        return self
    }
    
    //
    public mutating func subtract(from: Money) -> Money {
        self.amount = self.amount - from.amount
        return self
    }
    
}

////////////////////////////////////
// Job
//
public class Job {
    
    public enum JobType {
        case Hourly(Double)
        case Salary(Int)
    }
  
    public init(title : String, type : JobType) {
    }
  
    public func calculateIncome(hours: Int) -> Int {
    }
  
    public func raise(amt : Double) {
    }
    
}

////////////////////////////////////
// Person
//
public class Person {
    
    public var firstName : String = ""
    public var lastName : String = ""
    public var age : Int = 0

    public var job : Job? {
        get { }
        set(value) {
            
        }
    }
  
    public var spouse : Person? {
        get { }
        set(value) {
        }
    }
  
    public init(firstName : String, lastName: String, age : Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
  
    public func toString() -> String {
    }
    
}

////////////////////////////////////
// Family
//
public class Family {
  
    private var members : [Person] = []
  
  
    public init(spouse1: Person, spouse2: Person) {
  
    }
  
  
    public func haveChild(child: Person) -> Bool {
  
    }
  
  
    public func householdIncome() -> Int {
  
    }
    
}





