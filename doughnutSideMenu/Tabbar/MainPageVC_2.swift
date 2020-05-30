

import UIKit

class MainPageVC_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func swipeToLeft(_ sender: UISwipeGestureRecognizer) {
                        self.tabBarController?.selectedIndex = 0
       }
    
       @IBAction func swipeToRight(_ sender: UISwipeGestureRecognizer) {
                     self.tabBarController?.selectedIndex = 2
    }
}
