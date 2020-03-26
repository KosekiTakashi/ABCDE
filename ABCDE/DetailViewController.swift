//
//  DetailViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/14.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var AtextView: UITextView!
    @IBOutlet weak var BtextView: UITextView!
    @IBOutlet weak var CtextView: UITextView!
    @IBOutlet weak var DtextView: UITextView!
    @IBOutlet weak var EtextView: UITextView!
    
    var displayArray = [Data]()
    var number: Int = 0
    
    let disposeBag = DisposeBag()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AtextView.text = displayArray[number].A
        BtextView.text = displayArray[number].B
        CtextView.text = displayArray[number].C
        DtextView.text = displayArray[number].D
        EtextView.text = displayArray[number].E
        
        print(displayArray,number)
        
        change()
    }
    
    
    private func change(){
        
        
        AtextView.rx.text.subscribe(onNext :{[weak self] text in
            if let Atext = text{
                print(Atext)
                self?.AtextView.text = Atext
            }
            
            
            } ).disposed(by: disposeBag)
        
    }
    
    
    @IBAction func changeAction(_ sender: Any) {
        
        
    }
    
    
    
    
    

}
