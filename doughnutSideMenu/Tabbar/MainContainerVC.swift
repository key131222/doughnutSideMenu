

import UIKit
//MainContainer Settings
class MainContainerVC: UIViewController {
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("SideMenu"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(Profile),
                                               name: NSNotification.Name("Profile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(Settings),
                                               name: NSNotification.Name("Settings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(Logout),
                                               name: NSNotification.Name("Logout"),
                                               object: nil)
    }
    @objc func Profile() {
        performSegue(withIdentifier: "Profile", sender: nil)
        
    }
    
    @objc func Settings() {
        performSegue(withIdentifier: "Settings", sender: nil)
    }
    
    
    
    
    //Back to Login
    @objc func Logout() {
        let changePage
            = self.storyboard?.instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
        changePage.modalPresentationStyle = .fullScreen
        self.present(changePage, animated: true, completion: nil)
    }
    
    
    //SideMenu Range
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
    
    //Touch SideMenu
    @IBAction func onMoreTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("SideMenu"), object: nil)
    }
    
    
    //Click Blank Space To Hide SideMenu
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if sideMenuOpen == true{
            NotificationCenter.default.post(name: NSNotification.Name("SideMenu"), object: nil)
        }
    }
}


