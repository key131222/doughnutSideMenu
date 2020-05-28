

import UIKit

class MainPageVC_3 : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func swipeToLeft(_ sender: UISwipeGestureRecognizer) {
                     self.tabBarController?.selectedIndex = 1
    }
}

