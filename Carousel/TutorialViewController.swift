//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Kevin Shay on 2/12/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
  
    @IBOutlet weak var welcome1Image: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var toFeedContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize (width: 1280, height: 568)
        
        self.view.bringSubviewToFront(self.toFeedContainer)
        self.toFeedContainer.alpha = 0
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var page = Int(scrollView.contentOffset.x / 320)
        pageControl.currentPage = page
        
        if (page == 3) {
            
           // UIView.animateWithDuration(1.0, delay: 0.5, options:nil, animations: { () -> Void in
             //    self.toFeedContainer.alpha = 1
               // }, completion:nil) }
            
            NSLog("did scroll")
           
       
         
            
            
            
            
        }
    }
    

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var page = Int(scrollView.contentOffset.x / 320)
        if (page == 3) {
            
            UIView.animateWithDuration(0.3, delay: 0.5, options: nil, animations: { () -> Void in
                self.pageControl.alpha = 0
                }, completion: { (Bool) -> Void in
                    UIView.animateWithDuration(0.2, delay: 0.0, options: nil, animations: { () -> Void in
                        self.toFeedContainer.alpha = 1
                        }, completion:nil)
                    
            })

        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}


