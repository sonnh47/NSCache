//
//  CacheImage.swift
//  NSCache
//
//  Created by Son on 10/3/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import Foundation
import UIKit

class CacheImage {
    
    
    static let cache = NSCache<NSString, UIImage>()
    
    
    // Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.
    
    static func downloadImage(withURL url: URL, completion: @escaping (UIImage?) -> () ) {
        
        let dataTask = URLSession.shared.dataTask(with: url) {
            data, repond, error in
            
            var downloadImage: UIImage?   
            if let data = data {
                downloadImage = UIImage(data: data)
            }
            if downloadImage != nil {
                cache.setObject(downloadImage!, forKey: url.absoluteString as NSString)
            }
            DispatchQueue.main.async {
                completion(downloadImage)
            }
        }
        dataTask.resume()
    }
    
    static func getImage(withURL url: URL, completion: @escaping (UIImage?) -> () ) {
        if let image = cache.object(forKey: url.absoluteString as NSString) {
            completion(image)
        } else {
            downloadImage(withURL: url, completion: completion)
            
        }
    }
    
}
