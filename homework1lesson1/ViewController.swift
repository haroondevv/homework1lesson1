//Домашнее задание №1.
//Добавить 1 label, 3 обычных view, 1 кнопку. Расположить элементы по горизонтали по центру экрана, по вертикали друг за другом с отступами. По нажатию кнопки один из view должен закрашиваться в один из 3 цветов: зеленый, красный, желтый. Label также должен менять свое значение в зависимости от цвета.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!

    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    enum Views {
        case view1
        case view2
        case view3
        }
        var counter = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            label.text = ""
            }
        
    @IBAction func buttton(_ sender: UIButton) {
        
        counter += 1
        switch counter {
        case 1:
            view3.backgroundColor = .white
            view2.backgroundColor = .red
            label.text = "Red"
        case 2:
            view2.backgroundColor = .white
            view1.backgroundColor = .yellow
            label.text = "Yellow"
        case 3:
            view1.backgroundColor = .white
            view3.backgroundColor = .green
            label.text = "Green"
            counter = 0
        default:
            label.text = "nil"
        }
    }
    
}


