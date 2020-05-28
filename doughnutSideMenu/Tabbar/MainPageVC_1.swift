

//SideMenu及主頁的設定
import UIKit

class MainPageVC_1: UIViewController {
    
   //設定NavigationBar上的SideMenuㄌ項目名稱
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(Profile),
                                               name: NSNotification.Name("Profile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(Settings),
                                               name: NSNotification.Name("Settings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(LogOut),
                                               name: NSNotification.Name("LogOut"),
                                               object: nil)
    }
    

    
        @objc func Profile() {
        performSegue(withIdentifier: "Profile", sender: nil)
        
    }
    
    @objc func Settings() {
        performSegue(withIdentifier: "Settings", sender: nil)
    }
    
    
    //返回登入畫面
    @objc func LogOut() {
        let changePage
            = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        changePage.modalPresentationStyle = .fullScreen
        self.present(changePage, animated: true, completion: nil)
    }
    
           
    //tabbar切換
    @IBAction func swipeToLeft(_ sender: UISwipeGestureRecognizer) {
          self.tabBarController?.selectedIndex = 1
}
    
  
}
