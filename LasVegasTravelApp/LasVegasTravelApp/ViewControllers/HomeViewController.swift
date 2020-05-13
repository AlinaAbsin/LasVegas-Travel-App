//
//  ViewController.swift
//  LasVegasTravelApp
//
//  Created by Yaxin Deng on 5/9/20.
//  Copyright © 2020 Yaxin Deng. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var lasVegasImages = [String]()
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    var didMenuShow = false
    
    @IBOutlet weak var scrollViewOutlet: UIScrollView!
    
    @IBOutlet weak var pageControlOutlet: UIPageControl!
    
    @IBOutlet weak var viewLeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        loadLasVegasImages()
    }
    
    @IBAction func tapMenuButtonAction(_ sender: Any) {
        if didMenuShow {
            viewLeadingConstraint.constant = -200
        } else {
            viewLeadingConstraint.constant = 0
        }
        didMenuShow = !didMenuShow
    }
    
    private func loadLasVegasImages() {
        lasVegasImages.append("LasVegas1.jpg")
        lasVegasImages.append("LasVegas2.jpg")
        lasVegasImages.append("LasVegas3.jpg")
        lasVegasImages.append("LasVegas4.jpg")
        lasVegasImages.append("LasVegas5.jpg")
        
        for index in 0 ..< lasVegasImages.count {
            frame.origin.x = scrollViewOutlet.frame.width * CGFloat(index)
            frame.size = scrollViewOutlet.frame.size
            
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: lasVegasImages[index])
            imageView.contentMode = .scaleToFill
            scrollViewOutlet.addSubview(imageView)
        }
        
        scrollViewOutlet.contentSize = CGSize(width: scrollViewOutlet.frame.width * CGFloat(lasVegasImages.count), height: scrollViewOutlet.frame.height)
    }
}

extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.width
        pageControlOutlet.currentPage = Int(page)
    }
    
}
