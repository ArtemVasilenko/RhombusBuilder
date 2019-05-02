
import UIKit

class ViewController: UIViewController {
    
    var rhombus: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rhombus = Rhombus(rhombusData: RhombusData(x: 100, y: 100, length: 100, width: 100))
        self.view.addSubview(rhombus)
        
    }


}

