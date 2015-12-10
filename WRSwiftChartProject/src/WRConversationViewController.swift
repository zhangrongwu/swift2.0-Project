//
//  WRConversationViewController.swift
//  Demo_swift
//
//  Created by zhang_rongwu on 15/11/27.
//  Copyright © 2015年 zhang_rongwu. All rights reserved.
//

import UIKit
//应用程序的屏幕高度
let APP_Frame_Height = UIScreen.mainScreen().bounds.size.height
//应用程序的屏幕宽度
let App_Frame_Width = UIScreen.mainScreen().bounds.size.width

class WRConversationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        self.title = "微信"
        tableview = UITableView(frame: CGRectMake(0, 0, App_Frame_Width, APP_Frame_Height), style: UITableViewStyle.Plain)
        self.view.addSubview(self.tableview!)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "rese")
        
       initLoadingView()
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("rese")
        cell!.textLabel!.text = "tableView title "+" for "+" ___\(indexPath.row)"
        cell!.imageView!.image = UIImage(named: "tabbar_contactsHL")
        
        return cell!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let togeVC = WRTogetherViewController()
        self.navigationController?.pushViewController(togeVC, animated: true)
    }
    
    func initLoadingView() {
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)
        tableview.dg_addPullToRefreshWithActionHandler({ () -> Void in
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1.5 * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), { () -> Void in
                self.tableview.dg_stopLoading()
            })
            }, loadingView: loadingView)
        tableview.dg_setPullToRefreshFillColor(UIColor(red: 57/255.0, green: 67/255.0, blue: 89/255.0, alpha: 1.0))
        tableview.dg_setPullToRefreshBackgroundColor(tableview.backgroundColor!)
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
