

import UIKit
//Back to MainNavigation
class LogoutVC: UIViewController {

    @IBAction func showMainNavigationController(_ sender: Any) {
    let changePage
                    = self.storyboard?.instantiateViewController(withIdentifier: "MainNavigationController") as! UINavigationController
                changePage.modalPresentationStyle = .fullScreen
                self.present(changePage, animated: true, completion: nil)
            }
        }
