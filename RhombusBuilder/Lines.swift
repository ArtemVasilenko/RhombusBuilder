import UIKit

enum numberLine {
    case side1
    case side2
    case side3
    case side4
}


struct DataLine {
    var numberSide: numberLine
    var length: Int
    var width = 2
    
    init(numberSide: numberLine, length: Int) {
        self.numberSide = numberSide
        self.length = length
    }
    
    init(numberSide: numberLine, length: Int, width: Int) {
        self.numberSide = numberSide
        self.length = length
        self.width = width
    }
}


class Line: UIView {
    
    var numberSide: numberLine!
    var length: Int!
    var width: Int!
    
    
    init(dataLine: DataLine) {
        super.init(frame: CGRect())
        self.numberSide = dataLine.numberSide
        self.length = dataLine.length
        self.width = dataLine.width
        
        var arrView = [UIView]()
        
        switch self.numberSide {
        case .side1?:
            for i in 0..<self.length {
                let framePoint = CGRect(x: i, y: self.length - i, width: self.width, height: self.width)
                let myView = UIView(frame: framePoint)
                myView.backgroundColor = .red
                
                arrView.append(myView)
            }
            
        case .side2?:
            for i in 0..<self.length {
                let framePoint = CGRect(x: -i, y: self.length - i, width: self.width, height: self.width)
                let myView = UIView(frame: framePoint)
                myView.backgroundColor = .green
                
                arrView.append(myView)
            }
            
        case .side3?:
            for i in 0..<self.length {
                let framePoint = CGRect(x: i, y: self.length + i, width: self.width, height: self.width)
                let myView = UIView(frame: framePoint)
                myView.backgroundColor = .blue
                
                arrView.append(myView)
            }
            
        case .side4?:
            for i in 0..<self.length {
                let framePoint = CGRect(x: -i, y: self.length + i, width: self.width, height: self.width)
                let myView = UIView(frame: framePoint)
                myView.backgroundColor = .orange
                
                arrView.append(myView)
            }
            
            default: ()
        }
        
        
        arrView.forEach {
            self.addSubview($0)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
