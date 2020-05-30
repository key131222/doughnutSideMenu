

import UIKit
//LoutPage
class LogoutVC: UIViewController {
//Back to MainNavigation
    @IBAction func showMainNavigationController(_ sender: Any) {
        let changePage
            = self.storyboard?.instantiateViewController(withIdentifier: "MainNavigationController") as! UINavigationController
        changePage.modalPresentationStyle = .fullScreen
        self.present(changePage, animated: true, completion: nil)
    }
}
