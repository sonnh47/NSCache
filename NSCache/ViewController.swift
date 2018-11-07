//
//  ViewController.swift
//  NSCache
//
//  Created by Son on 10/3/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var spiner: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    var urlImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spiner.hidesWhenStopped = true
        spiner.startAnimating()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        let imageUrl:URL = URL(string: urlImage)!
        
        CacheImage.getImage(withURL: imageUrl) { image in
            self.imageView.image = image
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


//extension UIImageView {
//    func load(url: URL) {
//        DispatchQueue.global().async { [weak self] in
//            if let data = try? Data(contentsOf: url) {
//                if let image = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self?.image = image
//                    }
//                }
//            }
//        }
//    }
//}

