//
//  LoginViewController.swift
//  RESideSwift
//
//  Created by miguelicious on 11/25/14.
//  Copyright (c) 2014 miguelicious. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginWasPressed(sender: AnyObject) {
        println("login was pressed")
        var rootViewController = self.storyboard?.instantiateViewControllerWithIdentifier("RootViewController") as UIViewController
        self.presentViewController(rootViewController, animated: true, completion: nil)
        
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
