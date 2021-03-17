//
//  ViewController.swift
//  Ricky_and_Morty_API
//
//  Created by Alex Rodrigues Pacheco on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var infoService = InfoService()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(infoService.getInfoData())
    }


}

