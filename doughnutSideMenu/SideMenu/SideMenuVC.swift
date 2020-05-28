


import UIKit
//SideMenuCase切換設定
class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("SideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("Profile"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("Settings"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("LogOut/[                       "), object: nil)
        default: break
        }
        
    }
    
}
