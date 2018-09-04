import Foundation

struct StringStack {
    private var array: [String] = []
    
    func peek() -> String {
        guard let topElement = array.first else { fatalError("The stack is empty.")}
        return topElement
    }
    mutating func pop() -> String {
        return array.removeFirst()
    }
    mutating func push(element: String) {
        array.insert(element, at: 0)
    }
}

var nameStack = StringStack()
nameStack.push(element: "Slayer")
nameStack.push(element: "Pantera")
nameStack.push(element: "Immortal")
nameStack.push(element: "Dissection")
nameStack.push(element: "Mercyful Fate")
nameStack.push(element: "Morbid Angel")
nameStack.push(element: "Suffocation")
nameStack.push(element: "Darkthrone")

print(nameStack)

extension StringStack: CustomStringConvertible {
    var description: String {
        let topDivider = "---- STACK ----\n"
        let bottomDivider = "\n----------------\n"
        
        let stackElements = array.joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

