//
//  FirstViewController.swift
//  NSCache
//
//  Created by Son on 10/3/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController {
            vc.urlImage = "https://i.gifer.com/PL7r.gif"
        }
    }

}
