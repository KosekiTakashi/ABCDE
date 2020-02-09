//
//  ScrollViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/03.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    var posX: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = false
        
    }
}


extension ScrollViewController: UIScrollViewDelegate{
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        posX = scrollView.contentOffset.x
        
        
    }

    private func scrollViewDidScroll(scrollView: UIScrollView) {
        scrollView.contentOffset.x = posX
    }
    
    
}
