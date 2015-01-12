//
//  LeftMenuViewController.swift
//  RESideSwift
//
//  Created by miguelicious on 11/25/14.
//  Copyright (c) 2014 miguelicious. All rights reserved.
//

import UIKit
//protocol :
class LeftMenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource ,RESideMenuDelegate{

     var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
        self.tableView.frame = CGRectMake(0, (self.view.frame.size.height-54*5)/2.0, self.view.frame.size.width  , 54 * 5)
        tableView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin|UIViewAutoresizing.FlexibleBottomMargin|UIViewAutoresizing.FlexibleWidth
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.opaque = true;
        tableView.backgroundColor = UIColor.clearColor()
        tableView.backgroundView = nil;
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.bounces = false;
        tableView.scrollsToTop = false;
//        tableView.backgroundColor = UIColor.redColor()
//        tableView.ba
        self.view.addSubview(tableView)
    
                // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath( indexPath, animated: true)
        switch (indexPath.row) {
        case 0:
             var c = self.storyboard?.instantiateViewControllerWithIdentifier("HomeViewController") as UIViewController
            var navController = UINavigationController(rootViewController: c)
            self.sideMenuViewController.setContentViewController(navController, animated: true)
            self.sideMenuViewController.hideMenuViewController()
            break;
        case 1:
            var c = self.storyboard?.instantiateViewControllerWithIdentifier("LoginViewController") as UIViewController
            var navController = UINavigationController(rootViewController: c)
            self.sideMenuViewController.setContentViewController(navController, animated: true)
            self.sideMenuViewController.hideMenuViewController()
            
            break;
        default:
            break;
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 54
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.textColor = UIColor.whiteColor()
        var titles = ["Home", "Calendar", "Profile", "Settings", "Log Out"]
        var images = ["IconHome", "IconCalendar", "IconProfile", "IconSettings", "IconEmpty"];
        cell.textLabel?.text = titles[indexPath.row]
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        return cell
    
    }
    
    
    
    
}
