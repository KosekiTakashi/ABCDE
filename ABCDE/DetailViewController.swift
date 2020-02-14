//
//  DetailViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/14.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var AtextView: UITextView!
    @IBOutlet weak var BtextView: UITextView!
    @IBOutlet weak var CtextView: UITextView!
    @IBOutlet weak var DtextView: UITextView!
    @IBOutlet weak var EtextView: UITextView!
    
    var A = String()
    var B = String()
    var C = String()
    var D = String()
    var E = String()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AtextView.text = A
        BtextView.text = B
        CtextView.text = C
        DtextView.text = D
        EtextView.text = E
        
    }
    
    
    

}
