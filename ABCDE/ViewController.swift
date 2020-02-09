//
//  ViewController.swift
//  ABCDE
//
//  Created by 小関隆司 on 2020/02/03.
//  Copyright © 2020 kosekitakashi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {
    
    private var dataArray = BehaviorRelay<[Data]>(value: [])
    private var displayArray = [Data]()
    let disposeBag = DisposeBag()
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        
//        
//    }
    
    private func updateTableView(){
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let SVC = segue.destination as? ScrollViewController else{
            fatalError("Not found ViewController")
        }
        
        SVC.subjectObservable.subscribe(onNext: { data in
            var exitingdata = self.dataArray.value
            exitingdata.append(data)
            self.dataArray.accept(exitingdata)
            
            self.displayArray = self.dataArray.value
            print(self.displayArray)
            
            self.tableView.reloadData()
        }).disposed(by: disposeBag)
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        
        cell.textLabel?.text = displayArray[indexPath.row].A
        
        return cell
    }
    
    
    
}
