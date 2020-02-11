//
//  ScrollViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/03.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit
import RxSwift

class ScrollViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var ATextView: UITextView!
    @IBOutlet weak var BTextView: UITextView!
    @IBOutlet weak var CTextView: UITextView!
    @IBOutlet weak var DTextView: UITextView!
    @IBOutlet weak var ETextView: UITextView!
    
    private let dataSubject = PublishSubject<Data>()
    
    var subjectObservable : Observable<Data>{
        return dataSubject.asObservable()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = false
        
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        
        guard let A = ATextView.text,
            let B = BTextView.text,
            let C = CTextView.text,
            let D = DTextView.text,
            let E = ETextView.text
            else{
                return
        }
        
        let date = Date()
        
        
        let data = Data(A: A, B: B, C: C, D: D, E: E, date: "\(date)")
        
        dataSubject.onNext(data)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
