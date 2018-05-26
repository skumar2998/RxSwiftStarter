//
//  DetailViewController.swift
//  RxSwiftStarter
//
//  Created by Kumar, Sunil on 26/05/18.
//  Copyright © 2018 AppScullery. All rights reserved.
//

import UIKit
import RxSwift

class DetailViewController: UIViewController {
    
    private let selectedCharacterVariable = Variable("Sunil Kumar")
    
    var selectedCharacter:Observable<String> {
        return selectedCharacterVariable.asObservable()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        selectedCharacterVariable.value = sender.currentTitle!
        self.navigationController?.popViewController(animated: true)
    }
}
