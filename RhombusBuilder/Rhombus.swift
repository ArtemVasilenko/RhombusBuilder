import UIKit

struct RhombusData {
    var x: Int
    var y: Int
    var length: Int
    var width = 2
    
    init(x: Int, y: Int, length: Int) {
        self.x = x
        self.y = y
        self.length = length
    }
    
    init(x: Int, y: Int, length: Int, width: Int) {
        self.x = x
        self.y = y
        self.length = length
        self.width = width
    }
}


class Rhombus: UIView {
    var x: Int!
    var y: Int!
    var length: Int!
    var width: Int!
    
    init(rhombusData: RhombusData) {
        self.x = rhombusData.x
        self.y = rhombusData.y
        self.length = rhombusData.length
        self.width = rhombusData.width
        
        let line1 = Line(dataLine: DataLine(numberSide: .side1, length: self.length/2, width: 2))
        let viewLine1 = UIView(frame: CGRect(x: Int(self.length/2), y: Int(self.length/2), width: 2, height: self.length))
        viewLine1.addSubview(line1)
        
        let line2 = Line(dataLine: DataLine(numberSide: .side2, length: self.length/2, width: 2))
        let viewLine2 = UIView(frame: CGRect(x: Int(self.length/2), y: Int(self.length/2), width: 2, height: self.length))
        viewLine2.addSubview(line2)
        
        let line3 = Line(dataLine: DataLine(numberSide: .side3, length: self.length/2, width: 2))
        let viewLine3 = UIView(frame: CGRect(x: Int(self.length/2), y: Int(self.length/2 - length), width: 2, height: self.length))
        viewLine3.addSubview(line3)
        
        let line4 = Line(dataLine: DataLine(numberSide: .side4, length: self.length/2, width: 2))
        let viewLine4 = UIView(frame: CGRect(x: Int(self.length/2), y: Int(self.length/2 - length), width: 2, height: self.length))
        viewLine4.addSubview(line4)
        
        
        
        super.init(frame: CGRect(x: self.x, y: self.y, width: self.length, height: self.width))
        self.backgroundColor = .black
        self.addSubview(viewLine1)
        self.addSubview(viewLine2)
        self.addSubview(viewLine3)
        self.addSubview(viewLine4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
