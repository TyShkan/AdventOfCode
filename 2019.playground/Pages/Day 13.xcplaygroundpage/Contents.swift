//: [Previous](@previous)

import Foundation

let input = """
1,380,379,385,1008,2655,793190,381,1005,381,12,99,109,2656,1101,0,0,383,1102,0,1,382,20101,0,382,1,20102,1,383,2,21102,37,1,0,1105,1,578,4,382,4,383,204,1,1001,382,1,382,1007,382,42,381,1005,381,22,1001,383,1,383,1007,383,24,381,1005,381,18,1006,385,69,99,104,-1,104,0,4,386,3,384,1007,384,0,381,1005,381,94,107,0,384,381,1005,381,108,1105,1,161,107,1,392,381,1006,381,161,1101,0,-1,384,1106,0,119,1007,392,40,381,1006,381,161,1102,1,1,384,21001,392,0,1,21101,0,22,2,21102,0,1,3,21102,138,1,0,1105,1,549,1,392,384,392,20102,1,392,1,21101,22,0,2,21102,3,1,3,21101,161,0,0,1105,1,549,1102,0,1,384,20001,388,390,1,21002,389,1,2,21101,180,0,0,1106,0,578,1206,1,213,1208,1,2,381,1006,381,205,20001,388,390,1,21001,389,0,2,21101,0,205,0,1105,1,393,1002,390,-1,390,1102,1,1,384,21002,388,1,1,20001,389,391,2,21101,0,228,0,1106,0,578,1206,1,261,1208,1,2,381,1006,381,253,21001,388,0,1,20001,389,391,2,21101,253,0,0,1105,1,393,1002,391,-1,391,1102,1,1,384,1005,384,161,20001,388,390,1,20001,389,391,2,21101,279,0,0,1105,1,578,1206,1,316,1208,1,2,381,1006,381,304,20001,388,390,1,20001,389,391,2,21102,304,1,0,1106,0,393,1002,390,-1,390,1002,391,-1,391,1102,1,1,384,1005,384,161,20101,0,388,1,20102,1,389,2,21101,0,0,3,21101,338,0,0,1105,1,549,1,388,390,388,1,389,391,389,20102,1,388,1,21002,389,1,2,21102,4,1,3,21102,365,1,0,1106,0,549,1007,389,23,381,1005,381,75,104,-1,104,0,104,0,99,0,1,0,0,0,0,0,0,355,19,19,1,1,21,109,3,21201,-2,0,1,21202,-1,1,2,21102,1,0,3,21102,414,1,0,1106,0,549,21201,-2,0,1,21201,-1,0,2,21101,0,429,0,1106,0,601,2102,1,1,435,1,386,0,386,104,-1,104,0,4,386,1001,387,-1,387,1005,387,451,99,109,-3,2105,1,0,109,8,22202,-7,-6,-3,22201,-3,-5,-3,21202,-4,64,-2,2207,-3,-2,381,1005,381,492,21202,-2,-1,-1,22201,-3,-1,-3,2207,-3,-2,381,1006,381,481,21202,-4,8,-2,2207,-3,-2,381,1005,381,518,21202,-2,-1,-1,22201,-3,-1,-3,2207,-3,-2,381,1006,381,507,2207,-3,-4,381,1005,381,540,21202,-4,-1,-1,22201,-3,-1,-3,2207,-3,-4,381,1006,381,529,21201,-3,0,-7,109,-8,2106,0,0,109,4,1202,-2,42,566,201,-3,566,566,101,639,566,566,2102,1,-1,0,204,-3,204,-2,204,-1,109,-4,2105,1,0,109,3,1202,-1,42,593,201,-2,593,593,101,639,593,593,21001,0,0,-2,109,-3,2105,1,0,109,3,22102,24,-2,1,22201,1,-1,1,21101,509,0,2,21102,526,1,3,21102,1008,1,4,21102,630,1,0,1105,1,456,21201,1,1647,-2,109,-3,2106,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,2,2,0,2,0,2,2,0,2,2,0,2,2,2,2,2,2,0,2,2,2,0,2,0,2,2,0,2,2,0,2,2,2,0,0,2,2,0,0,1,1,0,2,2,2,0,0,0,2,0,0,2,2,0,2,0,2,0,2,2,0,0,2,2,0,2,2,2,0,2,0,2,2,2,2,0,2,2,0,2,0,1,1,0,2,2,2,2,2,0,0,0,0,2,0,2,2,2,0,2,2,0,0,0,2,0,0,2,0,0,2,0,2,2,0,0,2,0,0,2,0,2,0,1,1,0,2,0,0,2,2,2,2,2,2,0,2,0,2,2,0,0,0,0,2,0,0,2,2,2,0,2,0,0,0,0,2,2,2,2,0,2,0,2,0,1,1,0,0,2,0,2,0,2,0,0,0,2,2,2,2,2,2,2,0,2,2,2,0,2,2,0,0,0,2,0,2,2,0,2,0,0,0,2,2,2,0,1,1,0,2,2,0,0,0,0,2,0,0,0,2,2,0,0,0,2,2,2,2,2,0,0,2,2,2,0,2,2,2,2,0,2,2,0,2,0,0,2,0,1,1,0,2,0,2,2,0,2,2,0,2,0,2,2,0,2,0,2,2,0,0,2,0,2,0,0,2,2,0,2,2,2,2,2,2,0,0,2,2,0,0,1,1,0,0,0,2,2,2,0,2,2,2,2,0,2,2,0,2,2,2,0,0,0,0,0,2,2,0,2,2,2,2,2,2,0,0,2,2,2,2,2,0,1,1,0,2,0,0,2,2,2,2,0,0,0,2,0,2,0,2,2,2,2,2,2,2,0,2,0,2,0,0,2,0,0,0,2,0,2,2,2,0,0,0,1,1,0,2,0,0,2,2,0,2,0,2,0,2,2,0,0,2,0,2,0,0,0,0,0,2,2,2,0,0,2,0,0,2,2,0,2,2,0,2,2,0,1,1,0,0,0,0,0,0,2,0,2,2,2,2,2,0,2,2,0,2,0,2,2,0,2,0,0,2,2,2,2,2,0,0,0,0,2,2,0,0,2,0,1,1,0,0,0,2,0,0,2,2,0,2,2,0,2,2,0,2,2,0,0,0,2,0,2,0,0,2,2,2,0,2,0,2,0,2,2,2,2,2,2,0,1,1,0,0,2,2,2,2,2,2,0,0,2,0,2,0,0,2,0,2,0,2,2,2,0,2,0,2,2,2,0,0,2,2,0,2,0,2,2,2,2,0,1,1,0,0,0,0,2,0,2,2,2,2,2,0,2,2,0,2,0,2,0,2,2,0,2,2,0,2,2,0,2,2,2,0,2,2,2,0,0,2,2,0,1,1,0,2,0,0,2,0,2,0,2,0,0,0,0,0,0,0,2,0,2,0,2,0,0,2,2,2,2,0,2,0,2,2,0,2,0,0,2,2,2,0,1,1,0,0,2,0,2,2,2,2,2,0,2,2,2,2,2,2,2,0,2,2,2,2,0,2,0,0,0,2,2,0,2,2,2,2,0,0,2,2,2,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,73,91,79,27,84,58,31,29,97,58,15,10,67,88,80,10,1,3,95,62,30,42,69,5,42,17,47,33,88,95,98,31,66,63,22,32,40,11,95,47,11,12,83,74,32,5,17,1,81,84,29,88,4,93,37,69,94,69,22,89,34,7,76,9,54,53,82,57,43,22,70,80,92,76,55,81,53,37,21,23,49,23,85,23,80,97,59,9,62,94,3,29,87,98,33,7,60,88,29,58,24,39,2,35,20,94,21,90,42,60,85,92,51,17,67,7,90,84,59,79,10,32,29,44,2,88,86,3,57,66,11,25,11,70,95,8,32,24,8,32,80,57,96,89,85,88,2,51,46,80,24,19,41,81,62,4,98,92,33,32,50,27,75,16,90,57,89,77,82,72,67,35,34,29,59,14,74,26,60,37,88,87,50,35,12,27,73,66,42,16,84,84,15,64,46,4,9,73,85,42,79,10,49,88,78,41,69,71,92,32,35,13,84,71,82,18,68,97,45,37,87,20,28,20,10,2,30,26,21,97,56,91,60,38,12,71,73,55,71,24,59,79,37,62,12,75,65,72,19,23,69,47,86,55,66,78,87,29,59,6,63,7,32,84,80,74,41,60,58,4,70,61,5,82,11,45,79,56,7,48,62,4,46,88,83,31,96,97,18,91,68,38,31,24,64,3,14,1,85,10,52,97,92,81,36,1,2,27,28,56,75,32,88,46,98,49,22,80,83,93,41,12,35,70,81,57,53,92,20,49,76,77,8,50,93,35,81,15,22,46,14,54,53,48,74,32,19,91,39,61,61,39,55,57,50,64,27,33,84,1,81,89,70,24,28,28,60,30,16,28,66,96,51,38,86,23,29,49,5,95,61,7,20,41,31,84,59,21,21,49,62,9,30,87,83,65,89,29,61,3,13,14,9,71,87,78,48,7,84,69,62,57,43,82,31,76,4,79,46,91,11,6,30,87,34,10,2,50,66,5,77,87,57,43,84,84,79,75,42,10,14,3,32,21,24,68,75,12,36,64,18,91,14,91,80,52,50,1,50,37,74,41,11,1,93,79,50,94,51,37,52,21,84,57,73,44,2,77,81,54,48,82,76,63,14,50,1,87,94,89,89,81,84,47,72,37,94,95,62,76,49,47,40,43,86,16,17,59,8,13,31,89,65,80,29,70,40,34,33,64,42,68,75,58,69,23,49,68,16,43,78,54,66,49,17,14,90,7,56,7,23,13,50,70,17,83,9,57,11,28,55,11,14,5,47,4,9,94,17,64,98,83,89,58,91,74,62,77,62,2,11,84,61,23,60,37,40,73,30,35,8,24,28,56,7,50,81,31,21,41,87,10,56,26,86,66,77,43,69,80,47,74,36,13,29,14,83,68,88,96,52,93,62,82,62,89,74,35,70,68,75,69,35,22,50,10,8,18,18,2,54,75,64,20,65,81,62,60,98,19,40,97,6,57,21,63,43,80,39,25,56,46,70,42,83,9,42,5,64,56,16,79,39,23,12,9,47,3,96,47,32,43,91,12,6,98,47,91,34,17,5,93,91,22,32,47,39,1,11,75,73,15,36,46,41,26,98,43,46,49,20,60,43,13,71,92,58,62,19,17,30,71,97,43,14,62,27,71,48,50,96,80,13,13,39,98,38,80,55,37,13,96,88,15,37,26,84,12,80,46,85,36,50,86,76,63,2,85,52,14,28,71,32,66,95,22,54,56,33,22,97,57,30,20,60,86,34,65,21,47,38,38,53,81,79,45,65,65,28,89,48,9,13,41,3,62,20,61,47,65,11,11,18,76,93,80,72,74,61,7,5,35,13,64,86,56,4,51,13,63,94,79,12,27,59,94,73,59,36,32,19,10,24,29,65,67,2,67,87,26,64,28,5,60,95,3,97,70,98,57,68,51,68,57,96,56,78,75,32,89,67,52,46,93,16,82,92,75,5,35,50,2,84,57,32,24,71,58,60,49,56,15,74,28,73,61,12,4,38,46,86,92,26,68,98,20,76,94,28,14,53,68,15,38,5,81,21,24,33,11,78,83,19,3,80,98,57,38,97,11,9,45,29,33,34,7,47,32,28,14,65,66,84,12,47,59,17,82,11,63,6,68,73,4,87,85,42,24,12,67,57,27,15,21,53,96,73,36,57,12,9,72,11,33,27,9,92,21,96,25,87,45,1,31,90,56,11,37,8,87,13,74,40,17,20,78,17,94,12,54,21,67,15,16,41,44,77,44,88,64,14,47,54,45,21,20,77,41,5,97,51,43,81,44,65,64,33,7,793190
"""

struct Point: Equatable, Hashable {
    var x: Int
    var y: Int
}

extension Int {
    var decimalComponents: [Int] {
        String(self).map { $0.wholeNumberValue! }
    }
}

class Intcode {

    enum Operation { case read, write }
    
    var numbers: [Int: Int]
    
    var currentPosition = 0
    var relativeBase = 0
    var output: Int!
    
    var hasFinished = false
    
    init(numbers: [Int: Int]) {
        self.numbers = numbers
    }
    
    func execute(withInput input: Int) -> Int {
        
        guard hasFinished == false else { return output }
        
        while true {
            let opCodeComponents = numbers[currentPosition]!.decimalComponents
            let opCode = ((opCodeComponents.dropLast().last ?? 0) * 10) + opCodeComponents.last!
            
            func parameter(atIndex index: Int, operation: Operation = .read) -> Int {
                let explicitMode = opCodeComponents.dropLast(2 + index).last
                let rawPosition = currentPosition + 1 + index
                
                switch operation {
                case .read:
                    switch explicitMode {
                    case 0: return numbers[numbers[rawPosition]!, default: 0]
                    case 1: return numbers[rawPosition, default: 0]
                    case 2: return numbers[relativeBase + numbers[rawPosition]!, default: 0]
                    default: return numbers[numbers[rawPosition]!, default: 0]
                    }
                    
                case .write:
                    switch explicitMode {
                    case 0: return numbers[rawPosition]!
                    case 2: return relativeBase + numbers[rawPosition]!
                    default: return numbers[rawPosition]!
                    }
                }
            }
            
            switch opCode {
            case 1:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                let pTwo = parameter(atIndex: 2, operation: .write)
                numbers[pTwo] = pZero + pOne
                currentPosition += 4
                
            case 2:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                let pTwo = parameter(atIndex: 2, operation: .write)
                numbers[pTwo] = pZero * pOne
                currentPosition += 4
                
            case 3:
                let pZero = parameter(atIndex: 0, operation: .write)
                numbers[pZero] = input
                currentPosition += 2
                
            case 4:
                let pZero = parameter(atIndex: 0)
                output = pZero
                currentPosition += 2
                return output
                
            case 5:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                
                if pZero != 0 {
                    currentPosition = pOne
                } else {
                    currentPosition += 3
                }
                
            case 6:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                
                if pZero == 0 {
                    currentPosition = pOne
                } else {
                    currentPosition += 3
                }
                
            case 7:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                let pTwo = parameter(atIndex: 2, operation: .write)
                numbers[pTwo] = pZero < pOne ? 1 : 0
                currentPosition += 4
                
            case 8:
                let pZero = parameter(atIndex: 0)
                let pOne = parameter(atIndex: 1)
                let pTwo = parameter(atIndex: 2, operation: .write)
                numbers[pTwo] = pZero == pOne ? 1 : 0
                currentPosition += 4
                
            case 9:
                let pZero = parameter(atIndex: 0)
                relativeBase += pZero
                currentPosition += 2
                
            case 99: hasFinished = true; return output
            default: fatalError("Unexpected opCode")
            }
        }
    }
}

enum Tile: Int {
    case empty = 0, wall, block, horizontalPaddle, ball
}

let initialNumbers = input
    .split(separator: ",")
    .map { Int($0)! }
    .enumerated()
    .reduce(into: [Int: Int]()) { dict, indexElementPair in
        dict[indexElementPair.offset] = indexElementPair.element
    }

func partOne() -> String {
    var board: [Point: Tile] = [:]
    let engine = Intcode(numbers: initialNumbers)

    while !engine.hasFinished {
        let x = engine.execute(withInput: 0)
        let y = engine.execute(withInput: 0)
        let z = engine.execute(withInput: 0)
        
        guard let tile = Tile(rawValue: z) else { continue }
        board[Point(x: x, y: y)] = tile
    }
    
    return board
        .values
        .lazy
        .filter { $0 == .block }
        .count
        .description
}

func partTwo() -> String {
    var numbers = initialNumbers
    numbers[0] = 2
    
    var board: [Point: Tile] = [:]
    var score = 0
    
    var joystickPosition = 0
    var paddlePosition: Point?

    let engine = Intcode(numbers: numbers)

    while !engine.hasFinished {
        let x = engine.execute(withInput: joystickPosition)
        let y = engine.execute(withInput: joystickPosition)
        let z = engine.execute(withInput: joystickPosition)
        
        if x == -1 && y == 0 {
            score = z
        } else {
            guard let tile = Tile(rawValue: z) else { continue }
            
            if tile == .ball, let paddle = paddlePosition {
                if paddle.x > x { joystickPosition = -1 }
                else if paddle.x == x { joystickPosition = 0 }
                else { joystickPosition = 1 }
            }
            
            if tile == .horizontalPaddle {
                paddlePosition = Point(x: x, y: y)
            }
            
            board[Point(x: x, y: y)] = tile
        }
    }
    
    return score.description
}

print(partOne())
print(partTwo())

//: [Next](@next)
