

import UIKit
//返回MainNavigation
class LoginVC: UIViewController {

    @IBAction func showMainNavigationController(_ sender: Any) {
        let changePage
            = self.storyboard?.instantiateViewController(withIdentifier: "MainNavigationController") as! UINavigationController
        changePage.modalPresentationStyle = .fullScreen
        self.present(changePage, animated: true, completion: nil)
    }
}
    

