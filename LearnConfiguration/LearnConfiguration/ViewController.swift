//
//  ViewController.swift
//  LearnConfiguration
//
//  Created by yiqiwang(王一棋) on 2017/9/4.
//  Copyright © 2017年 melody5417. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize Configuration
        var configuration = Configuration()

        print("baseURL: \(configuration.environment.baseURL)")
        print("token: \(configuration.environment.token)")

        #if DEBUG
            print("debug or dailybuild")
        #else
            print("release")
        #endif
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

