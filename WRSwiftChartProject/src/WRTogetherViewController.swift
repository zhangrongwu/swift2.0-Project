//
//  WRTogetherViewController.swift
//  Demo_swift
//
//  Created by zhang_rongwu on 15/11/28.
//  Copyright © 2015年 zhang_rongwu. All rights reserved.
//

import UIKit

class WRTogetherViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    private var collectionView:UICollectionView!
    private var layout:UICollectionViewFlowLayout!
    private var list:NSMutableArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
        self.title = "联系"
        list = ["张荣武","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆","张荣武和周吾昆"]
        initcollectionView()
    }
    
    func initcollectionView() {
        layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(30, 30)
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        collectionView = UICollectionView(frame: CGRectMake(0, 0, App_Frame_Width, APP_Frame_Height), collectionViewLayout: self.layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.pagingEnabled = true
        collectionView.registerClass(collCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionView)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : collCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! collCell
//        cell.imageView.image = UIImage(named: "tabbar_badge")
        cell.titleLabel.text = list.objectAtIndex(indexPath.row) as? String
        return cell
    }
    /** 改变collectionviewcell的大小方法*/
    func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize{
        if(indexPath.row == 0) {
            return CGSizeMake(60, 40)
        } else {
            return CGSizeMake(200, 100)
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.row)"+"collection")
        
    }
    
    class collCell: UICollectionViewCell {
        var imageView : UIImageView!
        var titleLabel: UILabel!
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.imageView = UIImageView(frame: CGRectMake(0, 0, frame.size.width, frame.size.height / 2))
            self.contentView.addSubview(self.imageView)
            
            self.titleLabel = UILabel(frame: CGRectMake(0, self.imageView.bounds.bottom , frame.size.width, frame.size.height / 2))
            self.titleLabel.textColor = UIColor.grayColor()
            self.contentView.addSubview(self.titleLabel)
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("cell")
        }
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

