// Playground - noun: a place where people can play

import UIKit

class CountUp {
    let limit: Int
    let baseNum: Int
    
    init(upperLimit limit:Int, BaseNumber baseNum: Int) {
        self.limit = limit
        self.baseNum = baseNum
    }
    
    func isMultipleNum(calledNumber callNum: Int) -> Bool {
        return (callNum%baseNum == 0) ? true : false
    }
    
    func shoutAho(num: Int) -> String {
        return "\(num) !"
    }
    
    func printNum(num: Int) -> String {
        return "\(num)..."
    }
    
    func exec() {
        for var i = 1; i <= limit; i++ {
            
            if (isMultipleNum(calledNumber: i)){
                shoutAho(i)
            } else {
                printNum(i)
            }
        }
    }
}

var counter = CountUp(upperLimit: 30, BaseNumber: 3)
counter.exec()