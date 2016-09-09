//
//  ViewController.swift
//  pagethescrool
//
//  Created by Vitaly Sacred on 09/09/16.
//  Copyright © 2016 Vitaly Sacred. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollViewItem: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        var contentWight: CGFloat = 0.0
        
        
        let scrollWight = scrollViewItem.frame.size.width
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(UIImageView(image: image))
            
            var newX: CGFloat = 0.0
            
            newX = scrollWight/2 + scrollWight * CGFloat(x)
            
            scrollViewItem.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollViewItem.frame.size.height/2) - 75, width: 150, height: 150)
            
            contentWight += newX
            
            
        }
        
        // scrollViewItem.backgroundColor = UIColor.purple
        scrollViewItem.clipsToBounds = false
        scrollViewItem.contentSize = CGSize(width: contentWight, height: view.frame.size.height)
        
        print("Count of images: \(images.count)")
        print("ContentWight: \(contentWight)")
    }

    
}

