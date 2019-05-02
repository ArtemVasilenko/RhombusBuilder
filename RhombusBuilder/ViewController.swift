
import UIKit

class ViewController: UIViewController {
    
    var rhombus: UIView!
    var test: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rhombus = Rhombus(rhombusData: RhombusData(x: 100, y: 100, length: 200, width: 100))
        self.view.addSubview(rhombus)
        
        
        test = UIView(frame: CGRect(x: 50, y: 250, width: 50, height: 50))
        test.addDiamondMask()
        test.backgroundColor = .red
        self.view.addSubview(test)
        
        
    }
}

extension UIView {
    func addDiamondMask(cornerRadius: CGFloat = 0) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.midX, y: bounds.minY + cornerRadius))
        path.addLine(to: CGPoint(x: bounds.maxX - cornerRadius, y: bounds.midY))
        path.addLine(to: CGPoint(x: bounds.midX, y: bounds.maxY - cornerRadius))
        path.addLine(to: CGPoint(x: bounds.minX + cornerRadius, y: bounds.midY))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.lineWidth = cornerRadius * 2
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        layer.mask = shapeLayer
    }
}

