//
//  ViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/03.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }


}

