

import UIKit
//MainContainer設定
class MainContainerVC: UIViewController {
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("SideMenu"),
                                               object: nil)
    }
    
    //SideMenu移動範圍
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    //觸發SideMenu
    @IBAction func onMoreTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("SideMenu"), object: nil)
    }
    
    //點擊空白處收SideMenu
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if sideMenuOpen == true{
            NotificationCenter.default.post(name: NSNotification.Name("SideMenu"), object: nil)
        }
    }
}


