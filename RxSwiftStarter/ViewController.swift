//
//  ViewController.swift
//  RxSwiftStarter
//
//  Created by Kumar, Sunil on 26/05/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func editButtonPressed(_ sender: UIBarButtonItem) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.selectedCharacter.subscribe(onNext: { [weak self] character in
            self?.displayLabel.text = "Hello \(character)"
        }).disposed(by: disposeBag)
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

