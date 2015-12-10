//
//  WRTabBarViewController.swift
//  Demo_swift
//
//  Created by zhang_rongwu on 15/11/27.
//  Copyright © 2015年 zhang_rongwu. All rights reserved.
//

import UIKit

class WRTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBarViewController()
    }
    
    
    func initTabBarViewController() -> UITabBarController {
        let messageListCtrl = WRConversationViewController()
        messageListCtrl.tabBarItem.title = "消息"
        messageListCtrl.tabBarItem.image = UIImage(named: "tabbar_mainframe")?.imageWithRenderingMode(.AlwaysOriginal)
        messageListCtrl.tabBarItem.selectedImage = UIImage(named: "tabbar_mainframeHL")?.imageWithRenderingMode(.AlwaysOriginal)
        let messageNavigationController = UINavigationController(rootViewController: messageListCtrl)

        let friendCtrl = WRFriendViewController()
        friendCtrl.tabBarItem.title = "通讯录"
        friendCtrl.tabBarItem.image = UIImage(named: "tabbar_contacts")?.imageWithRenderingMode(.AlwaysOriginal)
        friendCtrl.tabBarItem.selectedImage = UIImage(named: "tabbar_contactsHL")?.imageWithRenderingMode(.AlwaysOriginal)
        let friendNavigationController = UINavigationController(rootViewController: friendCtrl)

        let finderCtrl = WRFindViewController()
        finderCtrl.tabBarItem.title = "发现"
        finderCtrl.tabBarItem.image = UIImage(named: "tabbar_discover")?.imageWithRenderingMode(.AlwaysOriginal)
        finderCtrl.tabBarItem.selectedImage = UIImage(named: "tabbar_discoverHL")?.imageWithRenderingMode(.AlwaysOriginal)
        let findNavigationController = UINavigationController(rootViewController: finderCtrl)
        
        let setCtrl = WRMeViewController()
        setCtrl.tabBarItem.title = "我"
        setCtrl.tabBarItem.image = UIImage(named: "tabbar_me")?.imageWithRenderingMode(.AlwaysOriginal)
        setCtrl.tabBarItem.selectedImage = UIImage(named: "tabbar_meHL")?.imageWithRenderingMode(.AlwaysOriginal)
        let settingsNavigationController = UINavigationController(rootViewController: setCtrl)
        
        self.viewControllers = [messageNavigationController, friendNavigationController, findNavigationController, settingsNavigationController]
        return self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
