//
//  ChatVC.swift
//  LetsChat
//
//  Created by Nittiya Nuanploy on 2/6/18.
//  Copyright © 2018 Nittiya Nuanploy. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    // Outlets
//    @IBOutlet weak var menuBtn: UIButton!
    
    @IBOutlet weak var menuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
//
//        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}