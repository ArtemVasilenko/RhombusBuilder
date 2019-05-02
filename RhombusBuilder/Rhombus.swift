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
        
        let line1 = Line(dataLine: DataLine(numberSide: .side1, length: self.length, width: self.width))
        
        
        
        super.init(frame: CGRect(x: self.x, y: self.y, width: self.length, height: self.width))
        self.backgroundColor = .black
        self.addSubview(line1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
